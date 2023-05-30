
-- CMAKE cmake_minimum_required(VERSION 3.20)
set_xmakever("2.7.9")

-- CMAKE project(
-- CMAKE     XProject
-- CMAKE     VERSION 0.1
-- CMAKE     DESCRIPTION "An example project with CMake"
-- CMAKE     LANGUAGES CXX
-- CMAKE )
-- CMAKE set(CMAKE_POSITION_INDEPENDENT_CODE ON)
-- CMAKE set(CMAKE_CXX_STANDARD 23) # googletest exige >= C++14
-- CMAKE set(CMAKE_CXX_STANDARD_REQUIRED ON)
set_project("XProject")
set_version("0.1", { build = "%Y%m%d%H%M" })
set_languages("c++23")

-- as bibliotecas internas
-- CMAKE add_subdirectory(src)
includes("src")

-- os programas
-- CMAKE add_subdirectory(app)
includes("app")

-- os programas de testes
-- CMAKE add_subdirectory(test)
includes("test")

-- baixa as bibliotecas
add_requires("gtest")
