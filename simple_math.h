#ifndef SIMPLE_MATH_H
#define SIMPLE_MATH_H

#include <stddef.h>
#include <stdint.h>
// #include <algorithm>
#include <string.h>
#include <math.h>


namespace SIMPLE_MATH
{
    typedef double (*UNI_FUNC)(double);
    typedef double (*BIN_FUNC)(double, double);


    // function declaration
    __attribute__((__always_inline__)) inline double 
    pow2(double x);
    __attribute__((__always_inline__)) inline double 
    pow3(double x);
    __attribute__((__always_inline__)) inline double 
    pow4(double x);
    __attribute__((__always_inline__)) inline double 
    mul(double x, double y);

    // __attribute__((__always_inline__)) inline void 
    // sort(const double *data, size_t nLength);
    // __attribute__((__always_inline__)) inline void 
    // rank(const double *data, double *rank_index, size_t nLength);

    __attribute__((__always_inline__)) inline double 
    sum(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    unifunc_sum(UNI_FUNC func, const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum(UNI_FUNC func, const double *data, double sub, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    binfunc_sum(BIN_FUNC func, const double *x_data, const double *y_data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum(BIN_FUNC func, const double *x_data, double x_sub, 
                    const double *y_data, double y_sub, size_t nLength);

    __attribute__((__always_inline__)) inline double 
    sum_len(const double *data, size_t nLength, size_t *valid_len);
    __attribute__((__always_inline__)) inline double 
    unifunc_sum_len(UNI_FUNC func, const double *data, size_t nLength, size_t *valid_len);
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum_len(UNI_FUNC func, const double *data, double sub, 
                    size_t nLength, size_t *valid_len);
    __attribute__((__always_inline__)) inline double 
    binfunc_sum_len(BIN_FUNC func, const double *x_data, const double *y_data, 
                size_t nLength, size_t *valid_len);
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum_len(BIN_FUNC func, const double *x_data, double x_sub, 
                        const double *y_data, double y_sub, size_t nLength, size_t *valid_len);

    __attribute__((__always_inline__)) inline double 
    mean(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    unifunc_mean(UNI_FUNC func, const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    sub_unifunc_mean(UNI_FUNC func, const double *data, double sub, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    binfunc_mean(BIN_FUNC func, const double *x_data, const double *y_data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    sub_binfunc_mean(BIN_FUNC func, const double *x_data, double x_sub, 
                    const double *y_data, double y_sub, size_t nLength);

    // __attribute__((__always_inline__)) inline double 
    // sorted_median(const double *data, size_t nLength);
    // __attribute__((__always_inline__)) inline double 
    // median(const double *data, size_t nLength);

    __attribute__((__always_inline__)) inline double 
    min(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline size_t 
    imin(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    max(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline size_t 
    imax(const double *data, size_t nLength);

    __attribute__((__always_inline__)) inline double 
    var(const double *data, size_t nLength, bool bias);
    __attribute__((__always_inline__)) inline double 
    std(const double *data, size_t nLength, bool bias);
    __attribute__((__always_inline__)) inline double 
    dot(const double *x_data, const double *y_data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    covar(const double *x_data, const double *y_data, size_t nLength, bool bias);
    __attribute__((__always_inline__)) inline double 
    corr(const double *x_data, const double *y_data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    skew(const double *data, size_t nLength);
    __attribute__((__always_inline__)) inline double 
    kurt(const double *data, size_t nLength);

    __attribute__((__always_inline__)) inline void 
    vec_2pow(const double *data, size_t nLength, double *out);
    __attribute__((__always_inline__)) inline void 
    vec_exp(const double *data, size_t nLength, double *out);
    __attribute__((__always_inline__)) inline void 
    vec_npow(double base, const double *data, size_t nLength, double *out);
    __attribute__((__always_inline__)) inline void 
    vec_log2(const double *data, size_t nLength, double *out);
    __attribute__((__always_inline__)) inline void 
    vec_log(const double *data, size_t nLength, double *out);
    __attribute__((__always_inline__)) inline void 
    vec_log10(const double *data, size_t nLength, double *out);

    __attribute__((__always_inline__)) inline double 
    ema(const double *data, size_t nLength, size_t n, size_t k);
    __attribute__((__always_inline__)) inline double 
    beta(const double *x_data, const double *y_data, size_t nLength);



    // function definition
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


    __attribute__((__always_inline__)) inline double 
    sum(const double *data, size_t nLength)
    {
        double res = 0;
        for (size_t i = 0; i < nLength; ++i){
            if (!isnan(data[i])){
                res += data[i];
            }
        }
        return res;
    }


    __attribute__((__always_inline__)) inline double 
    unifunc_sum(UNI_FUNC func, const double *data, size_t nLength)
    {
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


    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum(UNI_FUNC func, const double *data, double sub, size_t nLength)
    {
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


    __attribute__((__always_inline__)) inline double 
    binfunc_sum(BIN_FUNC func, const double *x_data, const double *y_data, size_t nLength)
    {
        double res = 0, tmp;
        for (size_t index = 0; index != nLength; ++index){
            tmp = func(x_data[index], y_data[index]);
            if (!isnan(tmp)){
                res += tmp;
            }
        }
        return res;
    }


    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum(BIN_FUNC func, const double *x_data, double x_sub, 
                                const double *y_data, double y_sub, size_t nLength)
    {
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


    __attribute__((__always_inline__)) inline double 
    sum_len(const double *data, size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    unifunc_sum_len(UNI_FUNC func, const double *data, size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    sub_unifunc_sum_len(UNI_FUNC func, const double *data, double sub, 
                        size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    binfunc_sum_len(BIN_FUNC func, const double *x_data, const double *y_data, 
                    size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    sub_binfunc_sum_len(BIN_FUNC func, const double *x_data, double x_sub, 
                        const double *y_data, double y_sub, size_t nLength, size_t *valid_len)
    {
        *valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    mean(const double *data, size_t nLength)
    {
        double data_sum = sum_len(data, nLength, &nLength);
        return data_sum / nLength;
    }


    __attribute__((__always_inline__)) inline double 
    unifunc_mean(UNI_FUNC func, const double *data, size_t nLength)
    {
        double data_sum = unifunc_sum_len(func, data, nLength, &nLength);
        return data_sum / nLength;
    }


    __attribute__((__always_inline__)) inline double 
    sub_unifunc_mean(UNI_FUNC func, const double *data, double sub, size_t nLength)
    {
        double data_sum = sub_unifunc_sum_len(func, data, sub, nLength, &nLength);
        return data_sum / nLength;
    }


    __attribute__((__always_inline__)) inline double 
    binfunc_mean(BIN_FUNC func, const double *x_data, const double *y_data, size_t nLength)
    {
        double data_sum = binfunc_sum_len(func, x_data, y_data, nLength, &nLength);
        return data_sum / nLength;
    }


    __attribute__((__always_inline__)) inline double 
    sub_binfunc_mean(BIN_FUNC func, const double *x_data, double x_sub, 
                    const double *y_data, double y_sub, size_t nLength)
    {
        double data_sum = sub_binfunc_sum_len(func, x_data, x_sub, 
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


    __attribute__((__always_inline__)) inline double 
    min(const double *data, size_t nLength)
    {
        double res = INFINITY;
        const double *end = data + nLength, *iter;
        for (iter = data; iter != end; ++iter){
            if (res > *iter){
                res = *iter;
            }
        }
        return res;
    }


    __attribute__((__always_inline__)) inline size_t 
    imin(const double *data, size_t nLength)
    {
        double res = INFINITY;
        size_t index = -1;
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


    __attribute__((__always_inline__)) inline double 
    max(const double *data, size_t nLength)
    {
        double res = -INFINITY;
        const double *end = data + nLength, *iter;
        for (iter = data; iter != end; ++iter){
            if (res < *iter){
                res = *iter;
            }
        }
        return res;
    }


    __attribute__((__always_inline__)) inline size_t 
    imax(const double *data, size_t nLength)
    {
        double res = -INFINITY;
        int index = -1;
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


    __attribute__((__always_inline__)) inline double 
    var(const double *data, size_t nLength, bool bias)
    {
        size_t valid_len;
        double data_sum = sum_len(data, nLength, &valid_len);
        double up = unifunc_sum(pow2, data, nLength) - data_sum * data_sum / valid_len;
        if (bias){
            return up / valid_len;
        }
        else{
            return up / (valid_len-1);
        }
    }


    __attribute__((__always_inline__)) inline double 
    std(const double *data, size_t nLength, bool bias)
    {
        return sqrt(var(data, nLength, bias));
    }


    __attribute__((__always_inline__)) inline double 
    dot(const double * __restrict__ x_data, const double * __restrict__ y_data, size_t nLength)
    {
        double data_sum = binfunc_sum_len(mul, x_data, y_data, nLength, &nLength);
        return data_sum / nLength;
    }


    __attribute__((__always_inline__)) inline double 
    covar(const double *x_data, const double *y_data, size_t nLength, bool bias)
    {
        size_t valid_len = nLength;
        double x_sum, y_sum, mul_sum, mul_tmp, res;
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
        if (bias){
            return res / valid_len;
        }
        else{
            return res / (valid_len - 1);
        }
    }


    __attribute__((__always_inline__)) inline double 
    corr(const double *x_data, const double *y_data, size_t nLength)
    {
        size_t valid_len = nLength;
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


    __attribute__((__always_inline__)) inline double 
    skew(const double *data, size_t nLength)
    {
        size_t valid_len;
        double avg = sum_len(data, nLength, &valid_len);
        avg = avg / valid_len;
        double up = sub_unifunc_sum(pow3, data, avg, nLength);
        double down_tmp = unifunc_sum(pow2, data, nLength) - avg*avg*valid_len;
        return up / sqrt(pow3(down_tmp) / valid_len);
    }


    __attribute__((__always_inline__)) inline double 
    kurt(const double *data, size_t nLength)
    {
        size_t valid_len;
        double avg = sum_len(data, nLength, &valid_len);
        avg = avg / valid_len;
        double up = sub_unifunc_sum(pow4, data, avg, nLength);
        double down_tmp = unifunc_sum(pow2, data, nLength) - avg*avg*valid_len;
        return valid_len * up / (down_tmp * down_tmp);
    }

    __attribute__((__always_inline__)) inline void 
    vec_2pow(const double *data, size_t nLength, double *out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = pow(2, data[i]);
        }
    }

    __attribute__((__always_inline__)) inline void 
    vec_exp(const double *data, size_t nLength, double *out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = exp(data[i]);
        }
    }


    __attribute__((__always_inline__)) inline void 
    vec_npow(double base, const double *data, size_t nLength, double *out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = pow(base, data[i]);
        }
    }


    __attribute__((__always_inline__)) inline void 
    vec_log2(const double * __restrict__ data, size_t nLength, double * __restrict__ out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = log2(data[i]);
        }
    }


    __attribute__((__always_inline__)) inline void 
    vec_log(const double *data, size_t nLength, double *out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = log(data[i]);
        }
    }


    __attribute__((__always_inline__)) inline void 
    vec_log10(const double *data, size_t nLength, double *out)
    {
        for (size_t i = 0; i < nLength; ++i){
            out[i] = log10(data[i]);
        }
    }

    __attribute__((__always_inline__)) inline double 
    ema(const double *data, size_t n, size_t k)
    {
        double beta = 2 / static_cast<double>(n+1);
        double beta_1sub = 1 - beta;
        double res = mean(data, n);
        for (size_t i = n; i < k; ++i){
            res = beta_1sub * res + beta * data[i];
        }
        return res;
    }


    __attribute__((__always_inline__)) inline double 
    beta(const double *x_data, const double *y_data, size_t nLength)
    {
        size_t valid_len = nLength;
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


};

#endif