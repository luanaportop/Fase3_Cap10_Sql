# Projeto - Banco de Dados Agrícola

Este é um projeto para criar um banco de dados sobre dados agrícolas. Usamos o Oracle SQL Developer Data Modeler para fazer o desenvolvimento. O banco de dados guarda informações sobre culturas, estados, safras e dados de plantação.

## Sumário

- Objetivo
- Estrutura do Banco de Dados
- Dicionário de Dados
- Consultas SQL 
- Passo a Passo para configuração
- Como Executar as Consultas

## Objetivo
Esse banco de dados foi criado para registrar informações sobre a produção agrícola, como dados de culturas, áreas plantadas, estados e safras. A ideia é ajudar a entender melhor a produção ao longo dos anos e identificar quais culturas e estados têm melhor rendimento.

## Estrutura do Banco de Dados
O banco de dados é formado por quatro tabelas principais:
1. T_CULTURA: Guarda informações sobre as culturas (milho, soja).
2. T_ESTADO: Tem dados sobre os estados e suas regiões.
3. T_SAFRA: Registra os anos das safras.
4. T_DADOS_PLANTACAO: Guarda informações sobre plantação, como área plantada, colhida, rendimento e produção.

## Modelo Relacional
Imagem anexa

## Modelo Conceitual (MER)
Imagem anexa

## Dicionário de Dados
Arquivo PDF e excel, anexos

## Consultas SQL 
Aqui estão algumas consultas SQL que podem ser úteis:
1.	Produção total de uma cultura por estado e ano da safra.
2.	Produção acumulada da cultura de todos os anos por estado (2019 a 2023)
3.	Evolução da área plantada ao longo dos anos

Passo a Passo para Configuração 
1.	Configurar o Banco de Dados Oracle: Primeiro, certifique-se de que o Oracle SQL Developer está instalado e funcionando.
2.	Rodar o Script de Criação: No Oracle SQL Developer, execute o script SQL (create_tables.sql) para criar todas as tabelas necessárias no banco.
3.	Inserir Dados: Os dados podem ser inseridos manualmente ou através de arquivos CSV.
Como Executar as Consultas 
Para rodar uma consulta no Oracle SQL Developer:
1.	Abra a conexão com o banco de dados.
2.	No editor SQL, copie e cole a consulta desejada.
3.	Ajuste os parâmetros (id_cultura, id_safra, id_estado) conforme desejar.
4.	Execute a consulta para ver os resultados.
