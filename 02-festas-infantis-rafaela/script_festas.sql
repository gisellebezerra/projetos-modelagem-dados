CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    telefone_cliente VARCHAR(20),
    cliente_novo BOOLEAN DEFAULT TRUE
);

CREATE TABLE tema (
    id_tema SERIAL PRIMARY KEY,
    nome_tema VARCHAR(50) NOT NULL,
    valor_base NUMERIC(10,2),
    cor_toalha VARCHAR(30)
);

CREATE TABLE lista_de_itens (
    id_lista_item SERIAL PRIMARY KEY,
    nome_item VARCHAR(100) NOT NULL,
    id_tema INTEGER REFERENCES tema(id_tema)
);

CREATE TABLE aluguel (
    id_aluguel SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES cliente(id_cliente),
    id_tema INTEGER REFERENCES tema(id_tema),
    endereco_festa TEXT NOT NULL,
    data_festa DATE NOT NULL,
    hora_inicio TIME,
    hora_fim TIME,
    valor_aluguel_base NUMERIC(10,2),
    valor_com_desconto NUMERIC(10,2)
);
