-- Optionally glob, but only for CMake 3.12 or later:
-- CMAKE set(
-- CMAKE     HEADER_LIST
-- CMAKE     "${XProject_SOURCE_DIR}/include/ric/max.hpp"
-- CMAKE )

-- Make an automatic library - will be static or dynamic based on user setting
-- CMAKE add_library(max_lib max.cpp ${HEADER_LIST})

-- We need this directory, and users of our library will need it too
-- CMAKE target_include_directories(max_lib PUBLIC ../include)

-- This depends on (header only) boost
-- target_link_libraries(max_lib PRIVATE Boost::boost)

-- All users of this library will need at least C++11
-- CMAKE target_compile_features(max_lib PUBLIC cxx_std_23)

target("max_lib")
    set_kind("shared")
    -- programa a ser compilado
    add_files("max.cpp")
    -- vincula as dependências no programa
    add_includedirs("../include")
    -- define os parâmetros do compilador
    add_languages("c++23")
