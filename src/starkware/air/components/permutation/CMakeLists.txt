add_library(permutation_dummy_air permutation_dummy_air.h)
target_link_libraries(permutation_dummy_air trace_generation_context composition_polynomial)

add_executable(permutation_dummy_air_test permutation_dummy_air_test.cc)
target_link_libraries(permutation_dummy_air_test permutation_dummy_air air_test_utils algebra lde starkware_gtest)
add_test(permutation_dummy_air_test permutation_dummy_air_test)
