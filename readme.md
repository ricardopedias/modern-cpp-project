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


https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html
https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html

https://www.youtube.com/watch?v=Lp1ifh9TuFI