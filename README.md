<h1 align="center">Simulator Télos Nível 4 - .NET Framework 🚀</h1>

Este projeto é um **Simulador de Seguros** desenvolvido em **.NET Framework**. A aplicação permite ao usuário inserir seus dados pessoais, escolher um tipo de seguro, e visualizar um valor estimado com base nas informações fornecidas. Além disso, o usuário pode imprimir o resultado ou retornar ao formulário para realizar uma nova simulação.

## Funcionalidades Principais

- **Página Mestra:** Define o layout padrão da aplicação.
- **Página de Formulário:** Campos para nome, data de nascimento, CPF e seleção do tipo de seguro.
- **Página de Resultado:** Exibe os dados do usuário e o cálculo do seguro, com opções para:
  - Voltar ao formulário
  - Imprimir o resultado

## Funcionalidades Implementadas

- **Validação de Campos:**
  - Utilização de `RequiredFieldValidator` para garantir que todos os campos obrigatórios sejam preenchidos.
  - Validação unobtrusive habilitada através do uso de **jQuery**.

- **Validação de CPF:** 
  - Implementação de uma função para garantir que o CPF informado seja válido.

- **Validação de Idade:** 
  - Cálculo para validar a data de nascimento do usuário e garantir que a idade seja compatível com os requisitos do seguro.

- **Seleção de Data:**
  - Utilização do `CalendarExtender` para facilitar a escolha da data de nascimento, permitindo também a digitação manual.

- **Dropdown de Tipos de Seguro:**
  - Lista suspensa que oferece diferentes opções de seguro para o usuário escolher.

- **Impressão de Resultados:**
  - Função `window.print()` para facilitar a impressão da página de resultado.

## Tecnologias Utilizadas

<div align="center">
  <img src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=csharp&logoColor=white" alt="C#" style="border-radius:4px"/>
  <img src="https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=dotnet&logoColor=white" alt=".NET" style="border-radius:4px"/>
  <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white" alt="jQuery" style="border-radius:4px"/>
  <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap" style="border-radius:4px"/>
</div>

## Como Rodar o Projeto

Para rodar o projeto localmente, siga os seguintes passos:

1. **Pré-requisito:**
   - Certifique-se de ter o **Visual Studio** instalado em seu computador com o **.NET Framework 4.8**.

2. **Clonar o Repositório:**
   ```bash
   git clone https://github.com/hilanasilv/simulador-de-seguros.git
   ```

3. **Abrir o Projeto:**
   - No Visual Studio, vá até **Arquivo > Abrir > Projeto/Solução** e selecione o arquivo `.sln` do projeto.

#

<p align=center>Desenvolvido por Nayla Hilana</p>