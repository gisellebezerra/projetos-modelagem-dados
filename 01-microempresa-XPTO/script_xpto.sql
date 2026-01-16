-- ======================================================
-- SCRIPT DE CRIAÇÃO: MINICENÁRIO 01 (XPTO)
-- OBJETIVO: Gestão de colaboradores e departamentos
-- ======================================================

-- 1. Criar a tabela de Endereço primeiro (pois o funcionário vai apontar para ela)
CREATE TABLE endereco (
    id_endereco SERIAL PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2)
);

-- 2. Criar a tabela de Departamento
CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(50) NOT NULL,
    sigla_departamento VARCHAR(10)
);

-- 3. Criar a tabela de Funcionários com as conexões (FKs)
CREATE TABLE funcionarios (
    id_funcionario SERIAL PRIMARY KEY,
    nome_funcionario VARCHAR(100) NOT NULL,
    cpf_funcionario CHAR(11) UNIQUE NOT NULL,
    data_nascimento_func DATE,
    data_admissao DATE NOT NULL,
    salario NUMERIC(10,2),
    id_departamento INTEGER REFERENCES departamento(id_departamento),
    id_endereco INTEGER REFERENCES endereco(id_endereco)
);
