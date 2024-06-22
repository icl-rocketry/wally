#include <iostream>
#include <cstdint>
#include <cmath>
#include <cassert>
#include "compressy.h"

bool theyre_about_equal(float a, float b, float precision) {
    return std::fabs(a - b) < precision;
}

template <typename T>
void test(float centroid, float range_max, float range_min, float precision) {
    float x = centroid + range_min;
    while (x < range_max + centroid) {
        T compressed = fp32_to_int<T>(x, centroid, range_max, range_min, precision);
        float decompressed = int_to_fp32<T>(compressed, centroid, range_max, range_min, precision);
        assert(theyre_about_equal(x, decompressed, precision));
        x += precision;
    }
}

int main() {
    constexpr float centroid = 4;
    constexpr float range_max = 10;
    constexpr float range_min = -10;
    constexpr float precision = 0.01;

    std::cout << how_many_values_can_i_represent<int32_t>() << std::endl;
    std::cout << how_many_values_do_i_need_to_represent_this(range_max, range_min, precision) << std::endl;

    std::cout << "Test fp8" << std::endl;
    if constexpr(is_legal<int8_t>(range_max, range_min, precision)) {
        test<int8_t>(centroid, range_max, range_min, precision);
    } else {
        std::cout << "fp8 is ILLEGAL" << std::endl;
    }

    std::cout << "Test fp16" << std::endl;
    if constexpr(is_legal<int16_t>(range_max, range_min, precision)) {
        test<int16_t>(centroid, range_max, range_min, precision);
    } else {
        std::cout << "fp16 is ILLEGAL" << std::endl;
    }

    std::cout << "Test fp32" << std::endl;
    if constexpr(is_legal<int32_t>(range_max, range_min, precision)) {
        test<int32_t>(centroid, range_max, range_min, precision);
    } else {
        std::cout << "fp32 is ILLEGAL" << std::endl;
    }


    return 0;
}