
# define o nome do programa de teste
set(BIN_NAME max.test)

# define os fontes do programa de teste
set(SOURCES max.test.cpp)

# programa a ser compilado
add_executable(${BIN_NAME} ${SOURCES})

# vincula as dependências no programa
target_link_libraries(${BIN_NAME} PUBLIC 
    gtest_main # o programa main fornecido pelo googletest
    max_lib # a biblioteca a ser testada
)

# notifica o cmake que BIN_NAME é um programa de teste
add_test(NAME ${BIN_NAME} COMMAND ${BIN_NAME})
