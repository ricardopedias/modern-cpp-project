cmake_minimum_required(VERSION 3.26)

# define uma variável chamada This, contendo o valor "Example"
set(This Example)

project(${This} C CXX)

# muda o valor de variáveis existentes
set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

# uma boa configuração para bibliotecas que serão misturadas e vinculadas a executáveis
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# notifica o cmake que teremos testes de unidade
enable_testing()

# define as dependencias
add_subdirectory(googletest)

# define os arquivos deste projeto
set(Headers
    Example.hpp
)
set(Sources
    Example.cpp
)

# define as bibliotecas que serão vinculadas para formar o programa
# quando estiver usando o GoogleTest, ele será o programa principal que utilizará
# o nosso programa como se fosse uma biblioteca
add_library(${This} STATIC ${Sources} ${Headers})

# define o subdiretório de testes
add_subdirectory(test)





