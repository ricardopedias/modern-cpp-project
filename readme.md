# Construção de programas C++

## Sobre este projeto

O objetivo é estudar e documentar o processo de construção de projetos modernos
escritos em C++ nos diversos ambientes e sistemas operacionais. 

A estrutura de diretórios segue um padrão moderno de organização, separando as 
responsabilidades, como descrito a seguir: 

| Diretório | Objetivo |
| :--:      | :--      |
| app       | Fontes dos programas |
| extern    | Bibliotecas externas baixadas manualmente |
| include   | Interfaces e cabeçalhos |
| script    | Scripts para operações via terminal |
| src       | Fontes das bibliotecas locais do programa |
| test      | Fontes dos programas de teste |

## Ferramentas de construção

As ferramentas se construção utilizadas são descritas a seguir.

### XMake

O [XMake](https://xmake.io) é a ferramenta para controlar o processo de compilação,
sendo uma opção moderna aos clássicos Make e CMake. A configuração é feita com
arquivos chamados `xmake.lua`, escritos na linguagem [Lua](https://www.lua.org/).

### CMake

O [CMake](https://cmake.org) é uma família de ferramentas multiplataforma de código 
aberto projetada para criar, testar e empacotar software. A configuração é feita 
com arquivos chamados `CMakeLists.txt`.

## Preparando o ambiente

Para falicilar a preparação de novos ambientes, foram criados scripts de instalação
para diversas plataformas, como Linux, Windows e MacOs, que podem ser encontrados
no diretório `script`:

```bash
# para instruções de uso
script/setup.sh

# para configurar e instalar todas as ferramentas no fedora 38
script/setup.sh -s fedora -r 38 -a

# para instalar e configurar somente o xmake no ubuntu 23.04
script/setup.sh -s ubuntu -r 23.04 --xmake
```

## Referências

Algumas referências utilizadas para consulta de informações e ajuda no entendimento
dos processos de compilação.

- [https://cliutils.gitlab.io](https://cliutils.gitlab.io/modern-cmake/chapters/basics/structure.html)
- [https://developer.fedoraproject.org](https://developer.fedoraproject.org/tech/languages/c/cpp_installation.html)
- [https://gitlab.com/CLIUtils/modern-cmake](https://gitlab.com/CLIUtils/modern-cmake/-/tree/master/examples/extended-project)
- https://www.youtube.com/watch?v=Lp1ifh9TuFI
