
-- programa a ser compilado
-- CMAKE add_executable(app app.cpp)

-- define os parâmetros do compilador
-- CMAKE target_compile_features(app PRIVATE cxx_std_23)

-- vincula as dependências no programa
-- CMAKE target_link_libraries(app
-- CMAKE     PRIVATE max_lib
-- CMAKE )

target("app")
    set_kind("binary")
    -- programa a ser compilado
    add_files("app.cpp")
    -- vincula as dependências no programa
    add_includedirs("../include")
    add_deps("max_lib")
    -- define os parâmetros do compilador
    add_languages("c++23")

