# Construção de programas C++

## Objetivo

O propósito deste projeto é entender o processo de construção de projetos modernos
escritos em C++ nos diversos ambientes e sistemas operacionais. 

## Os ramos existentes (branchs)

No ramo principal (branch main) se encontra uma estrutura de diretórios moderna
mas sem nenhuma ferramenta de construção.

Nos outros ramos, a mesma estrutura é preparada usando diferentes ferramentas 
de construção.

| Ramo | Objetivo |
|:-- | :-- |
| main | Estrutura |
| cmake | Configuração com CMake |
| xmake | Configuração com XMake |

Pra acessar a documentação de uma ferramenta específica, basta consultar o ramo
correspondente deste repositósio.

## Preparando o ambiente

Para agilizar o processo, foram criados scripts que facilitam a preparação do
ambiente em diversas plataformas. O objetivo é possibilitar uma configuração rápida, 
principalmente para novos ambientes limpos ou virtualizados.

No diretório `script`, existem opções para diversos sistemas operacionais.

```bash
# para instruções de uso
script/setup.sh

# para configurar o fedora 38 com cmake
script/setup.sh --fedora --38 --cmake

# para configurar o ubuntu 23.04 com xmake
script/setup.sh --ubuntu --23.04 --xmake
```

## Estrutura do projeto

A seguinte estrutura foi utilizada, como descrito a seguir:

| Diretório | Objetivo |
| :--:      | :--      |
| app       | Fonte do programa |
| extern    | Bibliotecas baixadas manualmente |
| include   | Interfaces e cabeçalhos |
| script    | Scripts para operações via terminal |
| src       | Fonte das bibliotecas locais do programa |
| test      | Testes das bibliotecas locais |

## Referências

Algumas referências utilizadas para consulta de informações e ajuda no entendimento
dos processos de compilação.

- [https://cliutils.gitlab.io](https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html)
- [https://developer.fedoraproject.org](https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html)
- [https://gitlab.com/CLIUtils/modern-cmake](https://gitlab.com/CLIUtils/modern-cmake/-/tree/master/examples/extended-project)
- https://www.youtube.com/watch?v=Lp1ifh9TuFI
