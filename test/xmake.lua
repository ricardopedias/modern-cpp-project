
-- define o nome do programa de teste
-- CMAKE set(BIN_NAME max.test)

-- define os fontes do programa de teste
-- CMAKE set(SOURCES max.test.cpp)

-- programa a ser compilado
-- CMAKE add_executable(${BIN_NAME} ${SOURCES})

-- vincula as dependências no programa
-- CMAKE target_link_libraries(${BIN_NAME} PUBLIC 
-- CMAKE     gtest_main # o programa main fornecido pelo googletest
-- CMAKE     max_lib # a biblioteca a ser testada
-- CMAKE )

-- notifica o cmake que BIN_NAME é um programa de teste
-- CMAKE add_test(NAME ${BIN_NAME} COMMAND ${BIN_NAME})

-- define o nome do programa de teste
target("max.test")
    set_group("test")
    set_kind("binary")
    -- define os fontes do programa de teste
    add_files("max.test.cpp")
    -- vincula as dependências no programa
    -- add_includedirs("../extern/googletest")
    add_deps("max_lib")
    add_includedirs("../include")
    add_links("gtest_main")
    add_packages("gtest")
    -- define os parâmetros do compilador
    add_languages("c++23")
