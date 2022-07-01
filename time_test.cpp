#include <iostream>
#include <stdint.h>
#include <stdlib.h>
#include <sched.h>
#include <cstring>
#include <time.h>
#include "simple_math.h"
#include "fast_math.h"


__attribute__((__always_inline__)) inline uint64_t
get_tsc(){
    uint64_t msr;
    __asm__ __volatile__ ( 
        "rdtsc\n\t"    // Returns the time in EDX:EAX.
        "shl $32, %%rdx\n\t"  // Shift the upper bits left.
        "or %%rdx, %0"        // 'Or' in the lower bits.
        : "=a" (msr)
        : 
        : "rdx"
    );
    return msr;
}


#define PRINT_TSC_SPENT(name, command) \
    do{ \
        uint64_t begin, end; \
        double res = 0; \
        command \
        begin = get_tsc(); \
        command \
        end = get_tsc(); \
        std::cout << name << std::endl \
                << "result: " << res << std::endl \
                << "tsc spent: " << end-begin << std::endl; \
    } while (0);


int main(){

    // uint64_t hex = 0x408fffffffffffff;
    // uint64_t qnan = 0x7ff8000000000001;

    // printf("%le\n", *((double *)&hex));

    srand(time(NULL));

    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(36, &cpuset);
    sched_setaffinity(0, sizeof(cpu_set_t), &cpuset);

    size_t length;
    std::cin >> length;

    double *x_data = new double[length];
    double *y_data = new double[length];
    for (size_t i = 0; i < length; ++i){
        // x_data[i] = *((double *)&qnan);
        x_data[i] = 200.0*rand()/RAND_MAX - 100;
        y_data[i] = 200.0*rand()/RAND_MAX - 100;
    }
    // x_data[1] = 200;
    // x_data[3] = 100;

    double *out = new double[length];

    // /* 测试 vec_log 的正确性，尤其注意诸如 NaN, inf 之类特殊值的处理 */
    // double *fast_ls = new double[length], *sim_ls = new double[length];
    // SIMPLE_MATH::vec_log10(x_data, length, sim_ls);
    // FAST_MATH::vec_log10(x_data, length, fast_ls);
    // for (size_t i = 0; i < length; ++i){
    //     printf("%e\t%e\n", sim_ls[i], fast_ls[i]);
    // }


    // /* 测试 vec_exp 的正确性，尤其注意诸如 NaN, inf 之类特殊值的处理 */
    // double *fast_ls = new double[length], *sim_ls = new double[length];
    // SIMPLE_MATH::vec_exp(x_data, length, sim_ls);
    // FAST_MATH::vec_exp(x_data, length, fast_ls);
    // for (size_t i = 0; i < length; ++i){
    //     if (abs(sim_ls[i]/fast_ls[i]-1) < 1e-13){
    //         // printf("T\t");
    //     }else{
    //         printf("F\t");
    //         printf("%lx\t%e\t%e\n", *(uint64_t *)(x_data+i), sim_ls[i], fast_ls[i]);
    //     }
    //     // printf("%lx\t%e\t%e\n", *(uint64_t *)(x_data+i), sim_ls[i], fast_ls[i]);
    // }




    std::string split = "====================";

    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::sum", 
        res = SIMPLE_MATH::sum(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::sum", 
        res = FAST_MATH::sum(x_data, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::mean", 
        res = SIMPLE_MATH::mean(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::mean", 
        res = FAST_MATH::mean(x_data, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::min", 
        res = SIMPLE_MATH::min(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::min", 
        res = FAST_MATH::min(x_data, length);
    )


    
    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::imin", 
        res = SIMPLE_MATH::imin(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::imin", 
        res = FAST_MATH::imin(x_data, length);
    )



        std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::max", 
        res = SIMPLE_MATH::max(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::max", 
        res = FAST_MATH::max(x_data, length);
    )


    
    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::imax", 
        res = SIMPLE_MATH::imax(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::imax", 
        res = FAST_MATH::imax(x_data, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::var", 
        res = SIMPLE_MATH::var(x_data, length, false);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::var", 
        res = FAST_MATH::var(x_data, length, false);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::std", 
        res = SIMPLE_MATH::std(x_data, length, false);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::std", 
        res = FAST_MATH::std(x_data, length, false);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::covar", 
        res = SIMPLE_MATH::covar(x_data, y_data, length, false);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::covar", 
        res = FAST_MATH::covar(x_data, y_data, length, false);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::corr", 
        res = SIMPLE_MATH::corr(x_data, y_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::corr", 
        res = FAST_MATH::corr(x_data, y_data, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::skew", 
        res = SIMPLE_MATH::skew(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::skew", 
        res = FAST_MATH::skew(x_data, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::kurt", 
        res = SIMPLE_MATH::kurt(x_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::kurt", 
        res = FAST_MATH::kurt(x_data, length);
    )


    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::vec_2pow", 
        SIMPLE_MATH::vec_2pow(x_data, length, out);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::vec_2pow", 
        FAST_MATH::vec_2pow(x_data, length, out);
    )


    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::vec_log2", 
        SIMPLE_MATH::vec_log2(x_data, length, out);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::vec_log2", 
        FAST_MATH::vec_log2(x_data, length, out);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::ema", 
        for (int i = 0; i < 100; ++i)
        res = SIMPLE_MATH::ema(x_data, length/5, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::ema", 
        for (int i = 0; i < 100; ++i)
        res = FAST_MATH::ema(x_data, length/5, length);
    )



    std::cout << std::endl << split << std::endl;
    PRINT_TSC_SPENT
    (
        "SIMPLE_MATH::beta", 
        res = SIMPLE_MATH::beta(x_data, y_data, length);
    )
    std::cout << std::endl;
    PRINT_TSC_SPENT
    (
        "FAST_MATH::beta", 
        res = FAST_MATH::beta(x_data, y_data, length);
    )


    
    return 0;
}