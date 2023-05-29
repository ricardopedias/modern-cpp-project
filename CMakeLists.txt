cmake_minimum_required(VERSION 3.20)

project(
    XProject
    VERSION 0.1
    DESCRIPTION "An example project with CMake"
    LANGUAGES CXX
)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

enable_testing()

# as bibliotecas internas
add_subdirectory(src)

# os programas
add_subdirectory(app)

# os programas de testes
add_subdirectory(test)

# as bibliotecas externas
add_subdirectory(extern/googletest)

# # Testing only available if this is the main app
# # Emergency override MODERN_CMAKE_BUILD_TESTING provided as well
# if((CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME OR MODERN_CMAKE_BUILD_TESTING)
#    AND BUILD_TESTING)
#   add_subdirectory(tests)
# endif()
