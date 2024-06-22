#pragma once

#include <cmath>
#include <cstdint>

constexpr size_t how_many_values_do_i_need_to_represent_this(float range_max, float range_min, float precision) {
    return static_cast<size_t>(std::ceil((range_max - range_min) / precision));
}

template <typename T>
constexpr size_t how_many_values_can_i_represent() {
    return static_cast<size_t>(1) << (8 * sizeof(T));
}

template <typename T>
constexpr bool is_legal(float range_max, float range_min, float precision) {
    return how_many_values_do_i_need_to_represent_this(range_max, range_min, precision) <= how_many_values_can_i_represent<T>();
}

template <typename T>
T fp32_to_int(float x, const float centroid, const float range_max, const float range_min, const float precision) {
    auto bias = range_max - range_min;
    return static_cast<T>((x - centroid) / precision + bias);
}

template <typename T>
float int_to_fp32(T x, float centroid, float range_max, float range_min, float precision) {
    auto bias = range_max - range_min;
    float as_float = static_cast<float>(x);
    return precision * (as_float - bias) + centroid;
}

template bool is_legal<int32_t>(float range_max, float range_min, float precision);
template bool is_legal<int16_t>(float range_max, float range_min, float precision);
template bool is_legal<int8_t>(float range_max, float range_min, float precision);

template int32_t fp32_to_int<int32_t>(const float x, const float centroid, const float range_max, const float range_min, const float precision);
template int16_t fp32_to_int<int16_t>(const float x, const float centroid, const float range_max, const float range_min, const float precision);
template int8_t fp32_to_int<int8_t>(const float x, const float centroid, const float range_max, const float range_min, const float precision);

template float int_to_fp32<int32_t>(int32_t x, float centroid, float range_max, float range_min, float precision);
template float int_to_fp32<int16_t>(int16_t x, float centroid, float range_max, float range_min, float precision);
template float int_to_fp32<int8_t>(int8_t x, float centroid, float range_max, float range_min, float precision);