
# programa a ser compilado
add_executable(app app.cpp)

# define os parâmetros do compilador
target_compile_features(app PRIVATE cxx_std_23)

# vincula as dependências no programa
target_link_libraries(app
    PRIVATE max_lib
)
