-- Criar tabelas independentes primeiro
CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(100) UNIQUE NOT NULL,
    sigla_departamento VARCHAR(10),
    data_inicio_ativ DATE
);

CREATE TABLE projeto (
    id_projeto SERIAL PRIMARY KEY,
    nome_projeto VARCHAR(100) NOT NULL,
    id_departamento INTEGER REFERENCES departamento(id_departamento)
);

-- Tabela de funcionário com autorrelacionamento (supervisor)
CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome_funcionario VARCHAR(100) NOT NULL,
    cpf_funcionario CHAR(11) UNIQUE NOT NULL,
    telefone_principal VARCHAR(20),
    telefone_secundario VARCHAR(20),
    salario_funcionario NUMERIC(10,2),
    id_departamento INTEGER REFERENCES departamento(id_departamento),
    id_supervisor INTEGER REFERENCES funcionario(id_funcionario)
);

-- Tabela Associativa para Alocação
CREATE TABLE alocacao_projeto (
    id_alocacao_projeto SERIAL PRIMARY KEY,
    id_projeto INTEGER REFERENCES projeto(id_projeto),
    id_funcionario INTEGER REFERENCES funcionario(id_funcionario),
    horas_semanais INTEGER
);

-- Tabela de Dependentes
CREATE TABLE dependente (
    id_dependente SERIAL PRIMARY KEY,
    nome_dependente VARCHAR(100),
    idade_dependente INTEGER,
    parentesco VARCHAR(30),
    id_funcionario INTEGER REFERENCES funcionario(id_funcionario)
);
