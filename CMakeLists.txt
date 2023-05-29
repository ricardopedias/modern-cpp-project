cmake_minimum_required(VERSION 3.20)

project(
    XProject
    VERSION 0.1
    DESCRIPTION "An example project with CMake"
    LANGUAGES CXX
)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_STANDARD 23) # googletest exige >= C++14
set(CMAKE_CXX_STANDARD_REQUIRED ON)

enable_testing()

# as bibliotecas internas
add_subdirectory(src)

# os programas
add_subdirectory(app)

# os programas de testes
add_subdirectory(test)

include(FetchContent)

# add_subdirectory(extern/googletest)
FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG        v1.13.0
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# # Testing only available if this is the main app
# # Emergency override MODERN_CMAKE_BUILD_TESTING provided as well
# if((CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME OR MODERN_CMAKE_BUILD_TESTING)
#    AND BUILD_TESTING)
#   add_subdirectory(tests)
# endif()
