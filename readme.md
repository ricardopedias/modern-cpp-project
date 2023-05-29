# Estudo sobre cmake

## Preparando o ambiente de trabalho

No diretório `setup` deste projeto, existem scripts preparados para configurar o sistema operacional:

```bash
# para configurar o fedora
./setup/fedora.sh
```

Para executar os testes na mão (filtros não funcionam no zsh):

```bash
git clone https://github.com/google/googletest.git

build/test/ExampleTests # executa todos
build/test/ExampleTests --gtest_filter=*Tux*
build/test/ExampleTests --gtest_filter=*Mac*
```

configurar
cmake -S . -B build

build
cmake --build build

testar
cmake --build build --target test

https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html

https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html
https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html

https://gitlab.com/CLIUtils/modern-cmake/-/tree/master/examples/extended-project

https://www.youtube.com/watch?v=Lp1ifh9TuFI