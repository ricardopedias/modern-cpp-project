# C++ - Estudo sobre CMake

## Preparando o ambiente de trabalho

No diretório `script` deste projeto, existem scripts preparados para configurar o sistema operacional.

## Compilando e testando

Para efetuar as configurações pré-compilação:

```bash
cmake -S . -B build
```

Para compilar:

```bash
cmake --build build
```

Para testar:

```bash
cmake --build build --target test
```

## Estrutura do projeto

| Diretório | Objetivo |
| :--:      | :--      |
| app       | Fonte do programa |
| extern    | Bibliotecas baixadas manualmente |
| include   | Interfaces e cabeçalhos |
| script    | Scripts para configuração via terminal |
| src       | Fonte das bibliotecas locais do programa |
| test      | Testes das bibliotecas locais|

## Referência

- https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html
- https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html
- https://gitlab.com/CLIUtils/modern-cmake/-/tree/master/examples/extended-project
- https://www.youtube.com/watch?v=Lp1ifh9TuFI