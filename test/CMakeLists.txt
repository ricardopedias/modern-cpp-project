cmake_minimum_required(VERSION 3.26)

set(This ExampleTests)

set(Sources
    ExampleTests.cpp
)

# cria um executável contendo o código fonte compilado
add_executable(${This} ${Sources})

# define as dependencias 
target_link_libraries(${This} PUBLIC 
    # o programa main será fornecido pelo google test
    gtest_main
    # o programa que será testado
    Example
)

# diz para o cmake que este programa é um teste de unidade
add_test(
    NAME ${This}
    COMMAND ${This}
)




