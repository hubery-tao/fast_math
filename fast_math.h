#ifndef FAST_MATH_H
#define FAST_MATH_H

#include <stddef.h>
#include <stdint.h>
#include <x86intrin.h>
#include <immintrin.h>
#include <math.h>
#include <stdio.h>

// // 调试用
// __attribute__((__always_inline__)) inline void
// print_avx(__m512d x){
//     double tmp[8] __attribute__((__aligned__(64)));
//     _mm512_store_pd(tmp, x);
//     for (uint8_t i = 0; i != 8; ++i){
//         printf("%lf\t", tmp[i]);
//     }
//     printf("\n");
// }

// __attribute__((__always_inline__)) inline void
// print_avx(__m512i x){
//     int64_t tmp[8] __attribute__((__aligned__(64)));
//     _mm512_store_epi64(tmp, x);
//     for (uint8_t i = 0; i != 8; ++i){
//         printf("%ld\t\t", tmp[i]);
//     }
//     printf("\n");
// }

// __attribute__((__always_inline__)) inline void
// print_avx_hex(__m512i x){
//     int64_t tmp[8] __attribute__((__aligned__(64)));
//     _mm512_store_epi64(tmp, x);
//     for (uint8_t i = 0; i != 8; ++i){
//         printf("%16lx\t", tmp[i]);
//     }
//     printf("\n");
// }

// __attribute__((__always_inline__)) inline void
// print_avx_hex(__m512d x){
//     int64_t tmp[8] __attribute__((__aligned__(64)));
//     _mm512_store_epi64(tmp, _mm512_castpd_si512(x));
//     for (uint8_t i = 0; i != 8; ++i){
//         printf("%16lx\t", tmp[i]);
//     }
//     printf("\n");
// }


namespace FAST_MATH
{
    typedef double (*UNI_FUNC)(double);
    typedef double (*BIN_FUNC)(double, double);
    typedef __m512d (*AVX_UNI_FUNC)(__m512d);
    typedef __m512d (*AVX_BIN_FUNC)(__m512d, __m512d);


    static const uint64_t ninf = 0xfff0000000000000, // 负无穷
                        qnan = 0x7ff8000000000001,   // qNaN
                        pinf = 0x7ff0000000000000;   // 正无穷


    static const __m512i exp_mask = _mm512_set1_epi64(0x7ff0000000000000), 
                        exp_mask10 = _mm512_set1_epi64(0x7fe0000000000000), 
                        frac_mask = _mm512_set1_epi64(0x000fffffffffffff), 
                        exp_sub = _mm512_set1_epi64(1023), 
                        exp_zero = _mm512_set1_epi64(0x800fffffffffffff), 
                        exp_set = _mm512_set1_epi64(0x3ff0000000000000), 
                        exp_inf = _mm512_set1_epi64(1024),  
                        exp_flow = _mm512_set1_epi64(10), 
                        exp_one = _mm512_set1_epi64(0x0010000000000000), 
                        avx_one = _mm512_set1_epi64(0x3ff0000000000000);



    __attribute__((__always_inline__)) inline double 
    pow2(double x)
    {
        return x * x;
    }


    __attribute__((__always_inline__)) inline double 
    pow3(double x)
    {
        return x * x * x;
    }


    __attribute__((__always_inline__)) inline double 
    pow4(double x)
    {
        return pow2(pow2(x));
    }


    __attribute__((__always_inline__)) inline double 
    mul(double x, double y)
    {
        return x * y;
    }


    __attribute__((__always_inline__)) inline __m512d
    avx_pow2(__m512d x)
    {
        return _mm512_mul_pd(x, x);
    }


    __attribute__((__always_inline__)) inline __m512d
    avx_pow3(__m512d x)
    {
        return _mm512_mul_pd(x, _mm512_mul_pd(x, x));
    }


    __attribute__((__always_inline__)) inline __m512d
    avx_pow4(__m512d x)
    {
        return avx_pow2(avx_pow2(x));
    }


    // __attribute__((__always_inline__)) inline void 
    // sort(const double *data, size_t nLength)
    // {
    //     std::sort(data, data+nLength);
    // }


    // __attribute__((__always_inline__)) inline void 
    // rank(const double *data, double *rank_index, size_t nLength)
    // {
    //     double datarank[nLength];
        
    //     //6us
    //     memcpy(datarank, data, sizeof(double) * nLength);
        
    //     sort(datarank, nLength);
        
    //     //初始化标注排序
    //     //110us
    //     for(size_t i = 0; i < nLength; i++)
    //     {
    //         for(size_t j = 0; j < nLength; j++)
    //         {
    //             if(data[i] == datarank[j])
    //             {
    //                 rank_index[i] = j;
    //                 break;
    //             }
    //         }
    //     }
    // }


    /**
     * @brief 将数组中的 double 累加；忽略NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的和
     */
    __attribute__((__always_inline__)) inline double 
    sum(const double *data, size_t nLength)
    {
        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp;
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = _mm512_loadu_pd(iter);
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = _mm512_maskz_loadu_pd(mask, iter);
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                if (!isnan(*iter)){
                    res += *iter;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对数组中的每个数进行一元函数操作后再累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]) 为 NaN，则忽略 i 位置
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return sum(func(data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    unifunc_sum(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                const double *data, size_t nLength)
    {
        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp;
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = avx_func(_mm512_loadu_pd(iter));
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = avx_func(_mm512_maskz_loadu_pd(mask, iter));
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                tmp = func(*iter);
                if (!isnan(tmp)){
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对数组中的每个数先减去 sub，再进行一元函数操作，最后累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]-sub) 为 NaN，则忽略 i 位置
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return sum(func(data[i]-sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                    const double *data, double sub, size_t nLength)
    {
        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp, 
                    avx_sub = _mm512_set1_pd(sub);
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = avx_func(_mm512_sub_pd(_mm512_loadu_pd(iter), avx_sub));
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = avx_func(_mm512_sub_pd(_mm512_maskz_loadu_pd(mask, iter), avx_sub));
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                tmp = func(*iter-sub);
                if (!isnan(tmp)){
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对两个数组中的每对数进行二元函数操作后再累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(x_data[i], y_data[i]) 为 NaN，则忽略 i 位置
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d. __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return sum(func(x_data[i], y_data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    binfunc_sum(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        if (nLength & ~0x7){
            size_t avx_len = nLength & ~0x7, index;
            __m512d sum = _mm512_setzero_pd(), avx_x, avx_y;
            __mmask8 mask, nan_mask;

            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_loadu_pd(x_data+index);
                avx_y = _mm512_loadu_pd(y_data+index);
                avx_x = avx_func(avx_x, avx_y);
                avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, avx_x);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_maskz_loadu_pd(mask, x_data+index);
            avx_y = _mm512_maskz_loadu_pd(mask, y_data+index);
            avx_x = avx_func(avx_x, avx_y);
            avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, avx_x);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            for (size_t index = 0; index != nLength; ++index){
                tmp = func(x_data[index], y_data[index]);
                if (!isnan(tmp)){
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对两个数组中的每对数先做减法，再进行二元函数操作，最后累加，
     *        不会产生中间变量数组，因此比较快；忽略 NaN：
     *        若 func(x_data[i]-x_sub, y_data[i]-y_sub) 为 NaN，则忽略 i 位置
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d, __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return sum(func(x_data[i]-x_sub, y_data[i]-y_sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                    const double * __restrict__ x_data, double x_sub, 
                    const double * __restrict__ y_data, double y_sub, size_t nLength)
    {
        if (nLength & ~0x7){
            size_t avx_len = nLength & ~0x7, index;
            __m512d sum = _mm512_setzero_pd(), avx_x, avx_y, 
                    avx_x_sub = _mm512_set1_pd(x_sub), 
                    avx_y_sub = _mm512_set1_pd(y_sub);
            __mmask8 mask, nan_mask;

            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_sub_pd(_mm512_loadu_pd(x_data+index), avx_x_sub);
                avx_y = _mm512_sub_pd(_mm512_loadu_pd(y_data+index), avx_y_sub);
                avx_x = avx_func(avx_x, avx_y);
                avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, avx_x);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_sub_pd(_mm512_maskz_loadu_pd(mask, x_data+index), avx_x_sub);
            avx_y = _mm512_sub_pd(_mm512_maskz_loadu_pd(mask, y_data+index), avx_y_sub);
            avx_x = avx_func(avx_x, avx_y);
            avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, avx_x);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            for (size_t index = 0; index != nLength; ++index){
                tmp = func(x_data[index]-x_sub, y_data[index]-y_sub);
                if (!isnan(tmp)){
                    res += tmp;
                }
                res += tmp;
            }
            return res;
        }
    }


    /**
     * @brief 将数组中的 double 累加；忽略NaN，
     *        将去除 NaN 之后的数组长度存储在 valid_len 中
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的和
     */
    __attribute__((__always_inline__)) inline double 
    sum_len(const double *data, size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;

        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp;
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = _mm512_loadu_pd(iter);
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                *valid_len -= _mm_popcnt_u32(nan_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = _mm512_maskz_loadu_pd(mask, iter);
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            *valid_len -= _mm_popcnt_u32(nan_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                if (isnan(*iter)){
                    --*valid_len;
                }
                else{
                    res += *iter;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对数组中的每个数进行一元函数操作后再累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]) 为 NaN，则忽略 i 位置；
     *        将忽略 NaN 之后的数组长度存储在 valid_len 中
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return sum(func(data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    unifunc_sum_len(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                const double *data, size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;

        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp;
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = avx_func(_mm512_loadu_pd(iter));
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                *valid_len -= _mm_popcnt_u32(nan_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = avx_func(_mm512_maskz_loadu_pd(mask, iter));
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_mask_cmpeq_epi64_mask(mask, _mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            *valid_len -= _mm_popcnt_u32(nan_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                tmp = func(*iter);
                if (isnan(tmp)){
                    --*valid_len;
                }
                else{
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对数组中的每个数先减去 sub，再进行一元函数操作，最后累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]-sub) 为 NaN，则忽略 i 位置；
     *        将忽略 NaN 之后的数组长度存储在 valid_len 中
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return sum(func(data[i]-sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum_len(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                    const double *data, double sub, 
                    size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;

        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d sum = _mm512_setzero_pd(), incre, avx_tmp, 
                    avx_sub = _mm512_set1_pd(sub);
            __mmask8 mask, nan_mask;

            for (iter = data; iter != avx_end; iter += 8){
                incre = avx_func(_mm512_sub_pd(_mm512_loadu_pd(iter), avx_sub));
                avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
                *valid_len -= _mm_popcnt_u32(nan_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, incre);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            incre = avx_func(_mm512_sub_pd(_mm512_maskz_loadu_pd(mask, iter), avx_sub));
            avx_tmp = _mm512_and_pd(incre, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_mask_cmpeq_epi64_mask(mask, _mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(incre), frac_mask);
            *valid_len -= _mm_popcnt_u32(nan_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, incre);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                tmp = func(*iter-sub);
                if (isnan(tmp)){
                    --*valid_len;
                }
                else{
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对两个数组中的每对数进行二元函数操作后再累加，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(x_data[i], y_data[i]) 为 NaN，则忽略 i 位置；
     *        将忽略 NaN 之后的数组长度存储在 valid_len 中
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d. __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return sum(func(x_data[i], y_data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    binfunc_sum_len(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                const double * __restrict__ x_data, const double * __restrict__ y_data, 
                size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;

        if (nLength & ~0x7){            
            size_t avx_len = nLength & ~0x7, index;
            __m512d sum = _mm512_setzero_pd(), avx_x, avx_y;
            __mmask8 mask, nan_mask;

            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_loadu_pd(x_data+index);
                avx_y = _mm512_loadu_pd(y_data+index);
                avx_x = avx_func(avx_x, avx_y);
                avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
                *valid_len -= _mm_popcnt_u32(nan_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, avx_x);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_maskz_loadu_pd(mask, x_data+index);
            avx_y = _mm512_maskz_loadu_pd(mask, y_data+index);
            avx_x = avx_func(avx_x, avx_y);
            avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_mask_cmpeq_epi64_mask(mask, _mm512_castpd_si512(avx_y), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
            *valid_len -= _mm_popcnt_u32(nan_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, avx_x);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            for (size_t index = 0; index != nLength; ++index){
                tmp = func(x_data[index], y_data[index]);
                if (isnan(tmp)){
                    --*valid_len;
                }
                else{
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 对两个数组中的每对数先做减法，再进行二元函数操作，最后累加，
     *        不会产生中间变量数组，因此比较快；忽略 NaN：
     *        若 func(x_data[i]-x_sub, y_data[i]-y_sub) 为 NaN，则忽略 i 位置；
     *        将忽略 NaN 之后的数组长度存储在 valid_len 中
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d, __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return sum(func(x_data[i]-x_sub, y_data[i]-y_sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum_len(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                    const double * __restrict__ x_data, double x_sub, 
                    const double * __restrict__ y_data, double y_sub, 
                    size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;

        if (nLength & ~0x7){
            size_t avx_len = nLength & ~0x7, index;
            __m512d sum = _mm512_setzero_pd(), avx_x, avx_y, 
                    avx_x_sub = _mm512_set1_pd(x_sub), 
                    avx_y_sub = _mm512_set1_pd(y_sub);
            __mmask8 mask, nan_mask;

            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_sub_pd(_mm512_loadu_pd(x_data+index), avx_x_sub);
                avx_y = _mm512_sub_pd(_mm512_loadu_pd(y_data+index), avx_y_sub);
                avx_x = avx_func(avx_x, avx_y);
                avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_y), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
                *valid_len -= _mm_popcnt_u32(nan_mask);
                sum = _mm512_mask_add_pd(sum, ~nan_mask, sum, avx_x);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_sub_pd(_mm512_maskz_loadu_pd(mask, x_data+index), avx_x_sub);
            avx_y = _mm512_sub_pd(_mm512_maskz_loadu_pd(mask, y_data+index), avx_y_sub);
            avx_x = avx_func(avx_x, avx_y);
            avx_y = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_mask_cmpeq_epi64_mask(mask, _mm512_castpd_si512(avx_y), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_x), frac_mask);
            *valid_len -= _mm_popcnt_u32(nan_mask);
            sum = _mm512_mask_add_pd(sum, ~nan_mask&mask, sum, avx_x);
            return _mm512_reduce_add_pd(sum);
        }
        else{
            double res = 0, tmp;
            for (size_t index = 0; index != nLength; ++index){
                tmp = func(x_data[index]-x_sub, y_data[index]-y_sub);
                if (isnan(tmp)){
                    --*valid_len;
                }
                else{
                    res += tmp;
                }
            }
            return res;
        }
    }


    /**
     * @brief 将数组中的 double 的平均 ；忽略NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的平均
     */
    __attribute__((__always_inline__)) inline double 
    mean(const double *data, size_t nLength)
    {
        double data_sum = sum_len(data, nLength, &nLength);
        return data_sum / nLength;
    }


    /**
     * @brief 对数组中的每个数进行一元函数操作后再取平均，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]) 为 NaN，则忽略 i 位置
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return mean(func(data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    unifunc_mean(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                const double *data, size_t nLength)
    {
        double data_sum = unifunc_sum_len(func, avx_func, data, nLength, &nLength);
        return data_sum / nLength;
    }


    /**
     * @brief 对数组中的每个数先减去 sub，再进行一元函数操作，最后取平均，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(data[i]-sub) 为 NaN，则忽略 i 位置
     * @param func 一元函数 double -> double
     * @param avx_func 批量一元函数 __mm512d -> __mm512d 
     * @param data double 数组
     * @param nLength 数组长度
     * @return mean(func(data[i]-sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_mean(UNI_FUNC func, AVX_UNI_FUNC avx_func, 
                    const double *data, double sub, size_t nLength)
    {
        double data_sum = sub_unifunc_sum_len(func, avx_func, data, sub, nLength, &nLength);
        return data_sum / nLength;
    }


    /**
     * @brief 对两个数组中的每对数进行二元函数操作后再取平均，
     *        不会产生中间变量数组，因此比较快；忽略NaN：
     *        若 func(x_data[i], y_data[i]) 为 NaN，则忽略 i 位置
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d. __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return mean(func(x_data[i], y_data[i]))
     */
    __attribute__((__always_inline__)) inline double 
    binfunc_mean(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        double data_sum = binfunc_sum_len(func, avx_func, x_data, y_data, nLength, &nLength);
        return data_sum / nLength;
    }


    /**
     * @brief 对两个数组中的每对数先做减法，再进行二元函数操作，最后取平均，
     *        不会产生中间变量数组，因此比较快；忽略 NaN：
     *        若 func(x_data[i]-x_sub, y_data[i]-y_sub) 为 NaN，则忽略 i 位置
     * @param func 二元函数 (double, double) -> double
     * @param avx_func 批量二元函数 (__mm512d, __mm512d) -> __mm512d 
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return mean(func(x_data[i]-x_sub, y_data[i]-y_sub))
     */
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_mean(BIN_FUNC func, AVX_BIN_FUNC avx_func, 
                    const double * __restrict__ x_data, double x_sub, 
                    const double * __restrict__ y_data, double y_sub, size_t nLength)
    {
        double data_sum = sub_binfunc_sum_len(func, avx_func, x_data, x_sub, 
                                            y_data, y_sub, nLength, &nLength);
        return data_sum / nLength;
    }



    // __attribute__((__always_inline__)) inline double 
    // sorted_median(const double *data, size_t nLength)
    // {
    //     if (nLength % 2 == 1)
    //     {
    //         return data[nLength/2];
    //     }
    //     else
    //     {
    //         double media = (data[nLength/2-1] + data[nLength/2])/2;
    //         return media;
    //     }
    // }


    // __attribute__((__always_inline__)) inline double 
    // median(const double *data, size_t nLength)
    // {
    //     sort(data, nLength);
    //     return sorted_median(data, nLength);
    // }


    /**
     * @brief 求数组中 double 的最小值，忽略 NaN；
     *        如果数组中全是 NaN，则返回 INFINITY
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的最小值
     */
    __attribute__((__always_inline__)) inline double 
    min(const double *data, size_t nLength)
    {
        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d avx_min = _mm512_castsi512_pd(_mm512_set1_epi64(pinf)), avx_tmp;
            __mmask8 mask;

            for (iter = data; iter != avx_end; iter += 8){
                avx_tmp = _mm512_loadu_pd(iter);
                avx_min = _mm512_min_pd(avx_tmp, avx_min);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, iter);
            avx_min = _mm512_mask_min_pd(avx_min, mask, avx_tmp, avx_min);
            return _mm512_reduce_min_pd(avx_min);
        }
        else{
            double res = INFINITY;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                if (res > *iter){
                    res = *iter;
                }
            }
            return res;
        }
    }


    /**
     * @brief 求数组中 double 最小值的索引，忽略 NaN；
     *        如果数组中全是 NaN, 则返回 (uint64_t)(-1)
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中最小值所在的索引
     */
    __attribute__((__always_inline__)) inline size_t 
    imin(const double *data, size_t nLength)
    {
        if (nLength & ~0x7f){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d avx_min = _mm512_castsi512_pd(_mm512_set1_epi64(pinf)), avx_tmp;

            __m512i avx_index = _mm512_set_epi64(-1, -2, -3, -4, -5, -6, -7, -8);
            __m512i avx_min_index = avx_index, avx_index_incre = _mm512_set1_epi64(8);

            __mmask8 mask, index_mask;

            for (iter = data; iter != avx_end; iter += 8){
                avx_tmp = _mm512_loadu_pd(iter);
                avx_index = _mm512_add_epi64(avx_index, avx_index_incre);
                index_mask = _mm512_cmplt_pd_mask(avx_tmp, avx_min);
                avx_min_index = _mm512_mask_blend_epi64(index_mask, avx_min_index, avx_index);
                avx_min = _mm512_mask_blend_pd(index_mask, avx_min, avx_tmp);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, iter);
            avx_index = _mm512_add_epi64(avx_index, avx_index_incre);
            index_mask = _mm512_mask_cmplt_pd_mask(mask, avx_tmp, avx_min);
            avx_min_index = _mm512_mask_blend_epi64(index_mask, avx_min_index, avx_index);
            avx_min = _mm512_mask_blend_pd(index_mask, avx_min, avx_tmp);
            
            double vec_min[8] __attribute__((__aligned__(64)));
            uint64_t vec_index[8] __attribute__((__aligned__(64)));
            _mm512_store_pd(vec_min, avx_min);
            _mm512_store_epi64(vec_index, avx_min_index);
            double min_val = *vec_min;
            uint64_t min_index = *vec_index;

            #pragma GCC unroll 8
            for (uint8_t i = 1; i != 8; ++i){
                if (vec_min[i] < min_val){
                    min_index = vec_index[i];
                    min_val = vec_min[i];
                }
            }
            return min_index;
        }
        else{
            double res = INFINITY;
            size_t index = -1;
            #pragma GCC unroll 8
            for(size_t i = 0; i != nLength; ++i)
            {
                if (res > data[i])
                {
                    res = data[i];
                    index = i;
                }
            }
            return index;
        }
    }


    /**
     * @brief 求数组中 double 的最大值，忽略 NaN；
     *        如果数组中全是 NaN，则返回 -INFINITY
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的最大值
     */
    __attribute__((__always_inline__)) inline double 
    max(const double *data, size_t nLength)
    {
        if (nLength & ~0x7){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d avx_max = _mm512_castsi512_pd(_mm512_set1_epi64(ninf)), avx_tmp;

            for (iter = data; iter != avx_end; iter += 8){
                avx_tmp = _mm512_loadu_pd(iter);
                avx_max = _mm512_max_pd(avx_tmp, avx_max);
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, iter);
            avx_max = _mm512_mask_max_pd(avx_max, mask, avx_tmp, avx_max);
            return _mm512_reduce_max_pd(avx_max);
        }
        else{
            double res = -INFINITY;
            const double *end = data + nLength, *iter;
            for (iter = data; iter != end; ++iter){
                if (res < *iter){
                    res = *iter;
                }
            }
            return res;
        }
    }


    /**
     * @brief 求数组中 double 最大值的索引，忽略 NaN；
     *        如果数组中全是 NaN, 则返回 (uint64_t)(-1)
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中最大值所在的索引
     */
    __attribute__((__always_inline__)) inline size_t 
    imax(const double *data, size_t nLength)
    {
        if (nLength & ~0x7f){
            const double *avx_end = data + (nLength & ~0x7), *iter;
            __m512d avx_max = _mm512_castsi512_pd(_mm512_set1_epi64(ninf)), avx_tmp;

            __m512i avx_index = _mm512_set_epi64(-1, -2, -3, -4, -5, -6, -7, -8);
            __m512i avx_max_index = avx_index, avx_index_incre = _mm512_set1_epi64(8);

            __mmask8 mask, index_mask;

            for (iter = data; iter != avx_end; iter += 8){
                avx_tmp = _mm512_loadu_pd(iter);
                avx_index = _mm512_add_epi64(avx_index, avx_index_incre);
                index_mask = _mm512_cmplt_pd_mask(avx_max, avx_tmp);
                avx_max_index = _mm512_mask_blend_epi64(index_mask, avx_max_index, avx_index);
                avx_max = _mm512_mask_blend_pd(index_mask, avx_max, avx_tmp);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, iter);
            avx_index = _mm512_add_epi64(avx_index, avx_index_incre);
            index_mask = _mm512_mask_cmplt_pd_mask(mask, avx_max, avx_tmp);
            avx_max_index = _mm512_mask_blend_epi64(index_mask, avx_max_index, avx_index);
            avx_max = _mm512_mask_blend_pd(index_mask, avx_max, avx_tmp);
            
            double vec_max[8] __attribute__((__aligned__(64)));
            uint64_t vec_index[8] __attribute__((__aligned__(64)));
            _mm512_store_pd(vec_max, avx_max);
            _mm512_store_epi64(vec_index, avx_max_index);
            double max_val = *vec_max;
            uint64_t max_index = *vec_index;

            #pragma GCC unroll 8
            for (uint8_t i = 1; i != 8; ++i){
                if (vec_max[i] > max_val){
                    max_index = vec_index[i];
                    max_val = vec_max[i];
                }
            }
            return max_index;
        }
        else{
            double res = -INFINITY;
            int index = -1;
            #pragma GCC unroll 8
            for(size_t i = 0; i < nLength; ++i)
            {
                if (res < data[i])
                {
                    res = data[i];
                    index = i;
                }
            }
            return index;
        }
    }


    /**
     * @brief 求数组中 double 的方差，忽略 NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @param bias 是否为有偏估计
     * @return 数组中 double 的方差
     */
    __attribute__((__always_inline__)) inline double 
    var(const double *data, size_t nLength, bool bias)
    {
        size_t valid_len;
        double data_sum = sum_len(data, nLength, &valid_len);
        double up = unifunc_sum(pow2, avx_pow2, data, nLength) - data_sum * data_sum / valid_len;
        if (bias){
            return up / valid_len;
        }
        else{
            return up / (valid_len-1);
        }
    }


    /**
     * @brief 求数组中 double 的标准差，忽略 NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @param bias 是否为有偏估计
     * @return 数组中 double 的标准差
     */
    __attribute__((__always_inline__)) inline double 
    std(const double *data, size_t nLength, bool bias)
    {
        return sqrt(var(data, nLength, bias));
    }


    /**
     * @brief 求两个向量的点乘，忽略 NaN：
     *        若某组数某处为 NaN，则两组数的该位置都被忽略
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return 两个向量的点乘
     */
    __attribute__((__always_inline__)) inline double 
    dot(const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        double data_sum = binfunc_sum_len(mul, _mm512_mul_pd, x_data, y_data, nLength, &nLength);
        return data_sum / nLength;
    }


    /**
     * @brief 两组数的协方差，忽略 NaN：
     *        若某组数某处为 NaN，则两组数的该位置都被忽略
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @param bias 是否为有偏估计
     * @return 两组数的协方差
     */
    __attribute__((__always_inline__)) inline double 
    covar(const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength, bool bias)
    {
        double res;
        size_t valid_len = nLength;

        if (nLength & ~0x7){
            size_t avx_len = nLength & ~0x7, index;
            __m512d avx_x, avx_x_sum, avx_y, avx_y_sum, 
                    avx_mul, avx_mul_sum, avx_tmp;
            double x_sum, y_sum;
            __mmask8 mask, nan_mask;

            avx_mul_sum = avx_y_sum = avx_x_sum = _mm512_setzero_pd();;
            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_loadu_pd(x_data+index);
                avx_y = _mm512_loadu_pd(y_data+index);
                avx_mul = _mm512_mul_pd(avx_x, avx_y);
                avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
                valid_len -= _mm_popcnt_u32(nan_mask);
                nan_mask = ~nan_mask;
                avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
                avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
                avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_maskz_loadu_pd(mask, x_data+index);
            avx_y = _mm512_maskz_loadu_pd(mask, y_data+index);
            avx_mul = _mm512_mul_pd(avx_x, avx_y);
            avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
            valid_len -= _mm_popcnt_u32(nan_mask);
            nan_mask = ~nan_mask & mask;
            avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
            avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
            avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            x_sum = _mm512_reduce_add_pd(avx_x_sum);
            y_sum = _mm512_reduce_add_pd(avx_y_sum);
            res = _mm512_reduce_add_pd(avx_mul_sum) - x_sum * y_sum / valid_len;
        }
        else{
            double x_sum, y_sum, mul_sum, mul_tmp;
            x_sum = y_sum = mul_sum = 0;
            for (size_t i = 0; i != nLength; ++i){
                mul_tmp = x_data[i] * y_data[i];
                if (isnan(mul_tmp)){
                    --valid_len;
                    continue;
                }
                mul_sum += mul_tmp;
                x_sum += x_data[i];
                y_sum += y_data[i];
            }
            res = mul_sum - x_sum * y_sum / valid_len;
        }

        if (bias){
            return res / valid_len;
        }
        else{
            return res / (valid_len - 1);
        }
    }


    /**
     * @brief 两组数的相关系数，忽略 NaN：
     *        若某组数某处为 NaN，则两组数的该位置都被忽略
     * @param x_data double 数组
     * @param y_data double 数组
     * @param nLength 数组长度
     * @return 两组数的相关系数
     */
    __attribute__((__always_inline__)) inline double 
    corr(const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        size_t valid_len = nLength;

        if (nLength & ~0x1ff){
            size_t avx_len = nLength & ~0x7, index;
            __m512d avx_x, avx_x_sum, avx_x_pow2, avx_x_pow2_sum, 
                    avx_y, avx_y_sum, avx_y_pow2, avx_y_pow2_sum, 
                    avx_mul, avx_mul_sum, avx_tmp;
            double x_sum, y_sum;
            __mmask8 mask, nan_mask;

            avx_mul_sum = avx_y_pow2_sum = avx_x_pow2_sum = avx_y_sum = avx_x_sum = _mm512_setzero_pd();;
            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_loadu_pd(x_data+index);
                avx_y = _mm512_loadu_pd(y_data+index);
                avx_x_pow2 = _mm512_mul_pd(avx_x, avx_x);
                avx_y_pow2 = _mm512_mul_pd(avx_y, avx_y);
                avx_mul = _mm512_mul_pd(avx_x, avx_y);
                avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
                valid_len -= _mm_popcnt_u32(nan_mask);
                nan_mask = ~nan_mask;
                avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
                avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
                avx_x_pow2_sum = _mm512_mask_add_pd(avx_x_pow2_sum, nan_mask, avx_x_pow2_sum, avx_x_pow2);
                avx_y_pow2_sum = _mm512_mask_add_pd(avx_y_pow2_sum, nan_mask, avx_y_pow2_sum, avx_y_pow2);
                avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_maskz_loadu_pd(mask, x_data+index);
            avx_y = _mm512_maskz_loadu_pd(mask, y_data+index);
            avx_x_pow2 = _mm512_mul_pd(avx_x, avx_x);
            avx_y_pow2 = _mm512_mul_pd(avx_y, avx_y);
            avx_mul = _mm512_mul_pd(avx_x, avx_y);
            avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
            valid_len -= _mm_popcnt_u32(nan_mask);
            nan_mask = ~nan_mask & mask;
            avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
            avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
            avx_x_pow2_sum = _mm512_mask_add_pd(avx_x_pow2_sum, nan_mask, avx_x_pow2_sum, avx_x_pow2);
            avx_y_pow2_sum = _mm512_mask_add_pd(avx_y_pow2_sum, nan_mask, avx_y_pow2_sum, avx_y_pow2);
            avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            x_sum = _mm512_reduce_add_pd(avx_x_sum);
            y_sum = _mm512_reduce_add_pd(avx_y_sum);
            return (_mm512_reduce_add_pd(avx_mul_sum) * valid_len - x_sum * y_sum) / 
                    sqrt((_mm512_reduce_add_pd(avx_x_pow2_sum) * valid_len - x_sum * x_sum) * 
                        (_mm512_reduce_add_pd(avx_y_pow2_sum) * valid_len - y_sum * y_sum));
        }
        else{
            double x_sum, x_pow2_sum, y_sum, y_pow2_sum, mul_sum, mul_tmp;
            x_sum = x_pow2_sum = y_sum = y_pow2_sum = mul_sum = 0;
            for (size_t i = 0; i != nLength; ++i){
                mul_tmp = x_data[i] * y_data[i];
                if (isnan(mul_tmp)){
                    --valid_len;
                    continue;
                }
                mul_sum += mul_tmp;
                x_sum += x_data[i];
                y_sum += y_data[i];
                x_pow2_sum += x_data[i] * x_data[i];
                y_pow2_sum += y_data[i] * y_data[i];
            }
            return (mul_sum * valid_len - x_sum * y_sum) / 
                    sqrt((x_pow2_sum * valid_len - x_sum * x_sum) * 
                        (y_pow2_sum * valid_len - y_sum * y_sum));
        }
    }


    /**
     * @brief 求数组中 double 的偏度，忽略 NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @return 数组中 double 的偏度
     */
    __attribute__((__always_inline__)) inline double 
    skew(const double *data, size_t nLength)
    {
        size_t valid_len;
        double avg = sum_len(data, nLength, &valid_len);
        avg = avg / valid_len;
        double up = sub_unifunc_sum(pow3, avx_pow3, data, avg, nLength);
        double down_tmp = unifunc_sum(pow2, avx_pow2, data, nLength) - avg*avg*valid_len;
        return up / sqrt(pow3(down_tmp) / valid_len);
    }


    /**
     * @brief 求数组中 double 的峰度，忽略 NaN
     * @param data double 数组
     * @param nLength 数组长度
     * @param bias 是否为有偏估计
     * @return 数组中 double 的峰度
     */
    __attribute__((__always_inline__)) inline double 
    kurt(const double *data, size_t nLength)
    {
        size_t valid_len;
        double avg = sum_len(data, nLength, &valid_len);
        avg = avg / valid_len;
        double up = sub_unifunc_sum(pow4, avx_pow4, data, avg, nLength);
        double down_tmp = unifunc_sum(pow2, avx_pow2, data, nLength) - avg*avg*valid_len;
        return valid_len * up / (down_tmp * down_tmp);
    }


    /**
     * @brief return __mm512d containing 2^x's, 
     *        where x's are stored in __mm512d avx_x
     * @details 
     * Method: 
     * 1.   find double r and integer k such that 
     *      0 <= r < 1 and x = k + r
     *      we can do that to IEEE754 doubles (except subnormals) 
     *      through bitwise operations and shifting.
     *      (1) for x >= 0, 
     *          x = 2^e * (1+f) = (2^e + [2^e * f]) + r
     *      (2) for x < 0,
     *          x = - 2^e * (1+f) = (- 2^e - [2^e * f] - 1) + r
     *          where [x] is the largest integer no greater than x
     * 
     * 2.   approximate 2^r by a special rational function on the interval [0,1)
     *      consider R(r) = r * (2^r + 1) / (2^r - 1) is an even function, 
     *      so its Taylor Series should be like: 
     *      R(r) = a0 + a2 * r^2 + a4 * r^4 + a6 * r^6 + ...
     *      use Remez Algorithm to fit the above equation trunctated at r^12
     *      the polynomial can approximate R(r) with errors less than 1e-16
     *      we can then approximate 2^r = (R(r) + r) / (R(r) - r), 
     *      the error is analyzed to be less than 1e-16
     * 
     * 3.   reset the exponent of 2^r to get 2^x
     *      this is possible because 1 <= 2^r < 2
     *      2^x = 2^k * 2^r
     *      so simply reset the exponent of IEEE754 doubles to k+1023
     * 
     * Accuracy:
     *      Since we approximate 2^r with errors less than 1e-16, 
     *      the approximation of 2^x should have errors less than 1 ulp 
     *      (unit in the last place)
     * 
     * Special Cases:
     *      INFINITY    ->  INFINITY
     *      -INFINITY   ->  0
     *      NaN         ->  NaN
     * 
     * Overflow & Underflow:
     *      x >= 1024   ->  INFINITY
     *      x < -1022   ->  0
     */
    __attribute__((__always_inline__)) inline __m512d
    avx_2pow(__m512d avx_x){
        static const __m512i pow_poly_params[7] = {_mm512_set1_epi64(0x40071547652b82fe), 
                                                    _mm512_set1_epi64(0x3fbd9303fea2f72e), 
                                                    _mm512_set1_epi64(0xbf4e50096ddced00), 
                                                    _mm512_set1_epi64(0x3ee63144f2a26823), 
                                                    _mm512_set1_epi64(0xbe810f4ee1b45d09), 
                                                    _mm512_set1_epi64(0x3e1a79b6ef2e5c08), 
                                                    _mm512_set1_epi64(0xbdb3c3b324a10f23)};
        __m512d avx_r, avx_sum, avx_pow2;
        __m512i avx_exp, avx_s;
        __mmask8 nnexp_mask, neg_mask, qnan_mask, exp1024_mask, flow_mask, underflow_mask;

        neg_mask = _mm512_movepi64_mask(_mm512_castpd_si512(avx_x));
        avx_exp = _mm512_and_epi64(_mm512_castpd_si512(avx_x), exp_mask);
        exp1024_mask = _mm512_cmpeq_epi64_mask(avx_exp, exp_mask);
        avx_exp = _mm512_srli_epi64(avx_exp, 52);
        nnexp_mask = _mm512_cmpge_epi64_mask(avx_exp, exp_sub);
        avx_exp = _mm512_maskz_sub_epi64(nnexp_mask, avx_exp, exp_sub);
        flow_mask = _mm512_cmpge_epi64_mask(avx_exp, exp_flow);
        avx_x = _mm512_and_pd(avx_x, _mm512_castsi512_pd(exp_mask|frac_mask));
        avx_x = _mm512_mask_and_pd(avx_x, nnexp_mask, avx_x, _mm512_castsi512_pd(frac_mask));
        qnan_mask = _mm512_mask_test_epi64_mask(exp1024_mask, _mm512_castpd_si512(avx_x), frac_mask);
        avx_r = _mm512_castsi512_pd(_mm512_sllv_epi64(_mm512_castpd_si512(avx_x), avx_exp));
        avx_s = _mm512_maskz_and_epi64(nnexp_mask, _mm512_castpd_si512(avx_r), exp_mask);
        avx_r = _mm512_mask_and_pd(avx_r, nnexp_mask, avx_r, _mm512_castsi512_pd(frac_mask));
        avx_r = _mm512_mask_or_pd(avx_r, nnexp_mask, avx_r, _mm512_castsi512_pd(avx_one));
        avx_r = _mm512_mask_sub_pd(avx_r, nnexp_mask, avx_r, _mm512_castsi512_pd(avx_one));
        avx_r = _mm512_mask_sub_pd(avx_r, neg_mask, _mm512_castsi512_pd(avx_one), avx_r);

        avx_pow2 = _mm512_mul_pd(avx_r, avx_r);
        avx_sum = _mm512_fmadd_pd(avx_pow2, _mm512_castsi512_pd(pow_poly_params[1]), 
                                            _mm512_castsi512_pd(pow_poly_params[0]));
        avx_x = avx_pow2;
        #pragma GCC unroll 5
        for (uint8_t i = 2; i != 7; ++i){
            avx_x = _mm512_mul_pd(avx_x, avx_pow2);
            avx_sum = _mm512_fmadd_pd(avx_x, _mm512_castsi512_pd(pow_poly_params[i]), avx_sum);
        }
        avx_sum = _mm512_div_pd(_mm512_add_pd(avx_sum, avx_r), _mm512_sub_pd(avx_sum, avx_r));
        avx_s = _mm512_add_epi64(avx_s, _mm512_sllv_epi64(exp_one, avx_exp));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_add_epi64(_mm512_castpd_si512(avx_sum), 
                                        ~neg_mask & nnexp_mask, _mm512_castpd_si512(avx_sum), avx_s));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_sub_epi64(_mm512_castpd_si512(avx_sum), 
                                        neg_mask & nnexp_mask, _mm512_castpd_si512(avx_sum), avx_s));
        underflow_mask = _mm512_mask_testn_epi64_mask(nnexp_mask, _mm512_castpd_si512(avx_sum), 
                                                            exp_mask10) | (flow_mask & neg_mask);
        avx_sum = _mm512_castsi512_pd(_mm512_mask_sub_epi64(_mm512_castpd_si512(avx_sum), 
                                        neg_mask, _mm512_castpd_si512(avx_sum), exp_one));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), flow_mask, pinf));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), underflow_mask, 0));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), qnan_mask, qnan));
        return avx_sum;
    }


    /**
     * @brief calculate 2^x of each double x in data, 
     *        and store the results in out
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_2pow(const double *data, size_t nLength, double *out)
    {
        __m512d avx_tmp;
        if (nLength & ~0x7){
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                _mm512_storeu_pd(out+index, avx_2pow(avx_tmp));
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            _mm512_mask_storeu_pd(out+index, mask, avx_2pow(avx_tmp));
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = pow(2, data[i]);
            }
        }
    }


    /**
     * @brief calculate e^x of each double x in data, 
     *        and store the results in out
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_exp(const double *data, size_t nLength, double *out)
    {
        if (nLength & ~0x7){
            static const __m512d log2_e = _mm512_castsi512_pd(_mm512_set1_epi64(0x3ff71547652b82fe));
            __m512d avx_tmp;
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                avx_tmp = avx_2pow(_mm512_mul_pd(avx_tmp, log2_e));
                _mm512_storeu_pd(out+index, avx_tmp);
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            avx_tmp = avx_2pow(_mm512_mul_pd(avx_tmp, log2_e));
            _mm512_mask_storeu_pd(out+index, mask, avx_tmp);
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = exp(data[i]);
            }
        }
    }


    /**
     * @brief calculate base^x of each double x in data, 
     *        and store the results in out
     * @param base base of the exponentiation
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_npow(double base, const double *data, size_t nLength, double *out)
    {
        if (nLength & ~0x7){
            __m512d log2_base = _mm512_set1_pd(log2(base));
            __m512d avx_tmp;
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                avx_tmp = avx_2pow(_mm512_mul_pd(avx_tmp, log2_base));
                _mm512_storeu_pd(out+index, avx_tmp);
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            avx_tmp = avx_2pow(_mm512_mul_pd(avx_tmp, log2_base));
            _mm512_mask_storeu_pd(out+index, mask, avx_tmp);
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = pow(base, data[i]);
            }
        }
    }


    /**
     * @brief return __mm512d containing log_2(x)'s,
     *        where x's are stored in __mm512d avx_tmp
     * @details
     * Method:
     * 1.   find k and f such that x = 2^k * f, 1 <= f < 2
     *      this can be done by extracting and resetting 
     *      the exponent of double x
     * 
     * 2.   let s = (f - 1) / (f + 1), then
     *      log_2(f) = log_2(1 + s) - log_2(1 - s) = R(s), 
     *      the Taylor Series of R(s) should be like:
     *      R(s) = a1 * r + a2 * r^3 + a3 * r^5 + a4 * r^7 + ...
     *      use the Remez Algorithm to fit the above equation truncated at r^13
     *      the polynomial can approximate log_2(f) with errors less than 1e-11
     * 
     * 3.   approximate log_2(x) = k + log_2(f) = k + R(s)
     * 
     * Accuracy:
     *      Since we approximate log_2(f) with errors less than 1e-11, 
     *      the approximation of log_2(x) has errors less than 1e-11.
     * 
     * Special Cases:
     *      INFINITY    ->  INFINITY
     *      NaN         ->  NaN
     *      x = 0       ->  -INFINITY
     *      x < 0       ->  NaN
     * 
     * Overflow & Underflow:
     *      subnormals  ->  -INFINITY
     *      Overflow is not likely to happen
     */
    __attribute__((__always_inline__)) inline __m512d
    avx_log2(__m512d avx_tmp){
        static const __m512i log2_poly_params[7] = {_mm512_set1_epi64(0x40071547652bc40c), 
                                                    _mm512_set1_epi64(0x3feec709d8c635d6), 
                                                    _mm512_set1_epi64(0x3fe2776e3a8c7fdf), 
                                                    _mm512_set1_epi64(0x3fda60ab57139605), 
                                                    _mm512_set1_epi64(0x3fd49892aaf11053), 
                                                    _mm512_set1_epi64(0x3fcf99fd730a2573), 
                                                    _mm512_set1_epi64(0x3fd4360e9afd45df)};
        __m512d avx_pow2, avx_sum; __m512i avx_exp;
        __mmask8 ninf_mask, neg_mask, nan_mask, pinf_mask;

        ninf_mask = _mm512_testn_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
        neg_mask = _mm512_movepi64_mask(_mm512_castpd_si512(avx_tmp));
        avx_exp = _mm512_srli_epi64(_mm512_castpd_si512(avx_tmp), 52);
        avx_exp = _mm512_sub_epi64(avx_exp, exp_sub);
        nan_mask = _mm512_cmpeq_epi64_mask(avx_exp, exp_inf);
        pinf_mask = _mm512_mask_testn_epi64_mask(nan_mask, _mm512_castpd_si512(avx_tmp), exp_zero);
        avx_tmp = _mm512_and_pd(avx_tmp, _mm512_castsi512_pd(exp_zero));
        avx_tmp = _mm512_or_pd(avx_tmp, _mm512_castsi512_pd(exp_set));
        avx_tmp = _mm512_div_pd(_mm512_sub_pd(avx_tmp, _mm512_castsi512_pd(avx_one)), 
                                _mm512_add_pd(avx_tmp, _mm512_castsi512_pd(avx_one)));
        avx_pow2 = _mm512_mul_pd(avx_tmp, avx_tmp);
        avx_sum = _mm512_mul_pd(avx_tmp, _mm512_castsi512_pd(log2_poly_params[0]));
        #pragma GCC unroll 6
        for (uint8_t j = 1; j != 7; ++j){
            avx_tmp = _mm512_mul_pd(avx_pow2, avx_tmp);
            avx_sum = _mm512_fmadd_pd(_mm512_castsi512_pd(log2_poly_params[j]), avx_tmp, avx_sum);
        }
        avx_sum = _mm512_add_pd(avx_sum, _mm512_cvtepi64_pd(avx_exp));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), ninf_mask, ninf));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), neg_mask|nan_mask, qnan));
        avx_sum = _mm512_castsi512_pd(_mm512_mask_set1_epi64(_mm512_castpd_si512(avx_sum), pinf_mask, pinf));
        return avx_sum;
    }
    

    /**
     * @brief calculate log_2(x) of each double x in data, 
     *        and store the results in out
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_log2(const double * __restrict__ data, size_t nLength, double * __restrict__ out)
    {
        __m512d avx_tmp;
        if (nLength & ~0x7){
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                _mm512_storeu_pd(out+index, avx_log2(avx_tmp));
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            _mm512_mask_storeu_pd(out+index, mask, avx_log2(avx_tmp));
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = log2(data[i]);
            }
        }
    }


    /**
     * @brief calculate log_e(x) of each double x in data, 
     *        and store the results in out
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_log(const double * __restrict__ data, size_t nLength, double * __restrict__ out)
    {
        static const __m512d log2_e = _mm512_castsi512_pd(_mm512_set1_epi64(0x3ff71547652b82fe));
        __m512d avx_tmp;
        if (nLength & ~0x7){
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                avx_tmp = _mm512_div_pd(avx_log2(avx_tmp), log2_e);
                _mm512_storeu_pd(out+index, avx_tmp);
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            avx_tmp = _mm512_div_pd(avx_log2(avx_tmp), log2_e);
            _mm512_mask_storeu_pd(out+index, mask, avx_tmp);
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = log(data[i]);
            }
        }
    }


    /**
     * @brief calculate log_10(x) of each double x in data, 
     *        and store the results in out
     * @param data double list
     * @param nLength number of doubles in data
     * @param out where to store the results
     * @return void
     */
    __attribute__((__always_inline__)) inline void 
    vec_log10(const double * __restrict__ data, size_t nLength, double * __restrict__ out)
    {
        static const __m512d log2_10 = _mm512_castsi512_pd(_mm512_set1_epi64(0x400a934f0979a371));
        __m512d avx_tmp;
        if (nLength & ~0x7){
            size_t avx_end = nLength & ~0x7, index;
            for (index = 0; index != avx_end; index += 8){
                avx_tmp = _mm512_loadu_pd(data+index);
                avx_tmp = _mm512_div_pd(avx_log2(avx_tmp), log2_10);
                _mm512_storeu_pd(out+index, avx_tmp);
            }
            __mmask8 mask = (1 << (nLength & 0x7)) - 1;
            avx_tmp = _mm512_maskz_loadu_pd(mask, data+index);
            avx_tmp = _mm512_div_pd(avx_log2(avx_tmp), log2_10);
            _mm512_mask_storeu_pd(out+index, mask, avx_tmp);
        }
        else{
            #pragma GCC ivdep
            for (size_t i = 0; i < nLength; ++i){
                out[i] = log10(data[i]);
            }
        }
    }


    /**
     * @brief caculate the exponential moving average
     * @param data double list
     * @param n the position (index) where the weighted calculation starts
     * @param k current position (index)
     * @return the exponential moving average at current position
     */
    __attribute__((__always_inline__)) inline double 
    ema(const double *data, size_t n, size_t k)
    {
        double beta = 2 / static_cast<double>(n+1);
        double beta_1sub = 1 - beta;
        double res = mean(data, n);
        size_t compu_len = k - n;

        if (compu_len & ~0x1f){
            double beta_1sub_pows[9];
            beta_1sub_pows[8] = 1; beta_1sub_pows[7] = beta_1sub;
            #pragma GCC unroll 8
            for (uint8_t i = 7; i != 0; --i){
                beta_1sub_pows[i-1] = beta_1sub_pows[i] * beta_1sub;
            }

            __m512d avx_tmp, avx_res = _mm512_set1_pd(res/8);
            __m512d avx_beta_1sub = _mm512_set1_pd(beta_1sub_pows[0]), 
            avx_beta = _mm512_mul_pd(_mm512_set1_pd(beta), _mm512_loadu_pd(&beta_1sub_pows[1]));

            const double *avx_begin = data + n;
            const double *avx_end = avx_begin + (compu_len & ~0x7), *iter;

            for (iter = avx_begin; iter != avx_end; iter += 8){
                avx_tmp = _mm512_mul_pd(_mm512_loadu_pd(iter), avx_beta);
                avx_res = _mm512_fmadd_pd(avx_res ,avx_beta_1sub, avx_tmp);
            }
            size_t compu_len_mod = compu_len & 0x7;
            __mmask8 mask = (1 << compu_len_mod) - 1;
            avx_tmp = _mm512_mul_pd(_mm512_maskz_loadu_pd(mask, iter), avx_beta);
            avx_res = _mm512_fmadd_pd(avx_res ,avx_beta_1sub, avx_tmp);
            return _mm512_reduce_add_pd(avx_res) / beta_1sub_pows[compu_len_mod];
        }
        else{
            #pragma GCC unroll 8
            for (size_t i = n; i != k; ++i){
                res = beta_1sub * res + beta * data[i];
            }
            return res;
        }
    }


    /**
     * @brief calculate the beta parameter for univariate linear regression, 
     *        often used to calculate the beta in the CAPM model
     * @param x_data independent variable
     * @param y_data dependent variable
     * @param nLength length of x_data and y_data
     * @return parameter beta
     */
    __attribute__((__always_inline__)) inline double 
    beta(const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        size_t valid_len = nLength;

        if (nLength & ~0x7){
            size_t avx_len = nLength & ~0x7, index;
            __m512d avx_x, avx_x_sum, avx_x_pow2, avx_x_pow2_sum, 
                    avx_y, avx_y_sum, avx_mul, avx_mul_sum, avx_tmp;
            double x_sum, y_sum;
            __mmask8 mask, nan_mask;

            avx_mul_sum = avx_x_pow2_sum = avx_y_sum = avx_x_sum = _mm512_setzero_pd();;
            for (index = 0; index != avx_len; index += 8){
                avx_x = _mm512_loadu_pd(x_data+index);
                avx_y = _mm512_loadu_pd(y_data+index);
                avx_x_pow2 = _mm512_mul_pd(avx_x, avx_x);
                avx_mul = _mm512_mul_pd(avx_x, avx_y);
                avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
                nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
                nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
                valid_len -= _mm_popcnt_u32(nan_mask);
                nan_mask = ~nan_mask;
                avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
                avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
                avx_x_pow2_sum = _mm512_mask_add_pd(avx_x_pow2_sum, nan_mask, avx_x_pow2_sum, avx_x_pow2);
                avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            }
            mask = (1 << (nLength & 0x7)) - 1;
            avx_x = _mm512_maskz_loadu_pd(mask, x_data+index);
            avx_y = _mm512_maskz_loadu_pd(mask, y_data+index);
            avx_x_pow2 = _mm512_mul_pd(avx_x, avx_x);
            avx_mul = _mm512_mul_pd(avx_x, avx_y);
            avx_tmp = _mm512_and_pd(avx_mul, _mm512_castsi512_pd(exp_mask));
            nan_mask = _mm512_cmpeq_epi64_mask(_mm512_castpd_si512(avx_tmp), exp_mask);
            nan_mask = _mm512_mask_test_epi64_mask(nan_mask, _mm512_castpd_si512(avx_mul), frac_mask);
            valid_len -= _mm_popcnt_u32(nan_mask);
            nan_mask = ~nan_mask & mask;
            avx_x_sum = _mm512_mask_add_pd(avx_x_sum, nan_mask, avx_x_sum, avx_x);
            avx_y_sum = _mm512_mask_add_pd(avx_y_sum, nan_mask, avx_y_sum, avx_y);
            avx_x_pow2_sum = _mm512_mask_add_pd(avx_x_pow2_sum, nan_mask, avx_x_pow2_sum, avx_x_pow2);
            avx_mul_sum = _mm512_mask_add_pd(avx_mul_sum, nan_mask, avx_mul_sum, avx_mul);
            x_sum = _mm512_reduce_add_pd(avx_x_sum);
            y_sum = _mm512_reduce_add_pd(avx_y_sum);
            return (_mm512_reduce_add_pd(avx_mul_sum) * valid_len - x_sum * y_sum) / 
                    (_mm512_reduce_add_pd(avx_x_pow2_sum) * valid_len - x_sum * x_sum);
        }
        else{
            double x_sum, x_pow2_sum, y_sum, mul_sum, mul_tmp;
            x_sum = x_pow2_sum = y_sum = mul_sum = 0;
            for (size_t i = 0; i != nLength; ++i){
                mul_tmp = x_data[i] * y_data[i];
                if (isnan(mul_tmp)){
                    --valid_len;
                    continue;
                }
                mul_sum += mul_tmp;
                x_sum += x_data[i];
                y_sum += y_data[i];
                x_pow2_sum += x_data[i] * x_data[i];
            }
            return (mul_sum * valid_len - x_sum * y_sum) / 
                    (x_pow2_sum * valid_len - x_sum * x_sum);
        }
    }


};


#endif