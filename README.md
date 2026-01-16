# 📊 Projetos de Modelagem de Dados

Repositório dedicado ao estudo e aplicação de modelagem de dados (Conceitual, Lógica e Física) utilizando PostgreSQL.

## 🚀 Estudos de Caso

Neste repositório, apresento a resolução de 3 minicenários com diferentes níveis de complexidade:

1. **[XPTO - Gestão de Equipes](./01-microempresa-XPTO):** Foco em relacionamentos 1:N e organização de departamentos.

**Cenário:** Uma micro empresa chamada XPTO quer organizar os dados dos seus colaboradores, para isso deseja criar um sistema informatizado para que o
departamento de recursos humanos possa realizar o cadastro dos colaboradores vinculados em formato CLT.
Obs. Essa versão inicial não precisa contemplar nada referido a folha de pagamento.
   
2. **[Rafaela Festas - Sistema de Aluguéis](./02-festas-infantis-rafaela):** Foco em regras de negócio, controle de estoque (itens) e gestão de valores/descontos.

**Cenário:** Rafaela possui vários temas de festas infantis para aluguel. Ela precisa controlar os aluguéis e para isso quer uma aplicação que permita cadastrar:
o nome e o telefone do cliente, o endereço completo da festa, o tema escolhido, a data da festa, a hora de início e término da festa.
Além disso, para alguns clientes antigos, Rafaela oferece descontos. Sendo assim, é preciso saber o valor realmente cobrado num determinado aluguel.
Para cada tema, é preciso controlar: a lista de itens que compõem o tema (ex: castelo, boneca da Cinderela, bruxa etc.), o valor do aluguel e a cor da toalha da mesa que deve
ser usada com o tema.

3. **[Corporativo - Gestão de Projetos](./03-gestao-corporativa-complexa):** Foco em autorrelacionamento (hierarquia), tabelas associativas (N:N) e entidades fracas.

**Cenário:** Uma empresa é organizada em departamentos, cada um com um nome único, uma sigla e um funcionário responsável por gerenciá-lo. Uma data determina quando o funcionário
iniciou suas atividades de gerência no departamento.Um departamento da empresa controla vários projetos, cada um com um código único e um nome. Um funcionário da empresa está 
vinculado a um departamento, mas pode trabalhar em vários projetos, sendo determinado o número de horas semanais dedicadas a cada um. Além disso, todo funcionário tem um
supervisor direto.Para cada funcionário são armazenadas informações como: nome, CPF, endereço, telefone(s) de contato,salário e dependentes (primeiroNome, idade, parentesco).

## 🛠️ Tecnologias e Conceitos
- **SGBD:** PostgreSQL
- **Modelagem:** Entidade-Relacionamento (ER), Normalização (1FN, 2FN, 3FN), Integridade Referencial.
- **Linguagem:** SQL (DDL e DML).
