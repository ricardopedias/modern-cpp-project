# Estudo sobre cmake

## Vscode 

Instalar as extensões:

```bash
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cmake-tools
```

Para executar os testes na mão (filtros não funcionam no zsh):

```bash
git clone https://github.com/google/googletest.git

build/test/ExampleTests # executa todos
build/test/ExampleTests --gtest_filter=*Tux*
build/test/ExampleTests --gtest_filter=*Mac*
```


https://www.youtube.com/watch?v=Lp1ifh9TuFI