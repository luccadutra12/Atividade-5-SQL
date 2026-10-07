CREATE DATABASE clinica_medica_db;

USE clinica_medica_db;

CREATE TABLE medicos (
    id INT AUTO_INCREMENT,
    nome VARCHAR(120),
    especialidade VARCHAR(80),
    crm VARCHAR(20) ,
    telefone VARCHAR(20),
    email VARCHAR(150),
    PRIMARY KEY (id),
);

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(120),
    cpf VARCHAR(14),
    data_nascimento DATE,
    rua VARCHAR(120),
    numero VARCHAR(10),
    cidade VARCHAR(80),
    cep VARCHAR(9),
    telefone VARCHAR(20),
    email VARCHAR(150),
    PRIMARY KEY (id)
);


CREATE TABLE agendamentos (
    id INT AUTO_INCREMENT,
    medico_id INT,
    paciente_id INT ,
    data_hora DATETIME,
    sala VARCHAR(10),
    valor DECIMAL(10,2),
    observacoes VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (medico_id) REFERENCES medicos(id),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id)
);
