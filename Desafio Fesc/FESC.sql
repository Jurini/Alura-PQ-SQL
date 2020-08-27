-------------------------------------------
--Criação das tabelas
-------------------------------------------
--1a
CREATE TABLE PACIENTE
(ID NUMBER(10), Nome VARCHAR2(120),
Numero_do_cartao NUMBER(17), Data_nascimento Date,
CPF NUMBER(11),Telefone VARCHAR2(16),
E_mail VARCHAR2(70));

--1b
CREATE TABLE MEDICO
(ID NUMBER(10), Nome VARCHAR2(120),
Codigo_CRM NUMBER(5), Estado_CRM VARCHAR2(2),
Especialidade VARCHAR2(100),Telefone VARCHAR2(16),
E_mail VARCHAR2(70));

--1c
CREATE TABLE CONSULTA
(ID NUMBER(10), Cod_Medico NUMBER(17),
Cod_Paciente NUMBER(17), Data_ DATE);


ALTER TABLE PACIENTE ADD CONSTRAINT PACIENTE_ID_pk  PRIMARY KEY (ID);
ALTER TABLE CONSULTA ADD CONSTRAINT CONSULTA_ID_pk  PRIMARY KEY (ID);
ALTER TABLE MEDICO ADD CONSTRAINT MEDICO_ID_pk  PRIMARY KEY (ID);

ALTER TABLE CONSULTA ADD CONSTRAINT fk_Paciente FOREIGN KEY (Cod_Paciente) REFERENCES PACIENTE(ID);
ALTER TABLE CONSULTA ADD CONSTRAINT fk_Medico FOREIGN KEY (Cod_Medico) REFERENCES MEDICO(ID);

-------------------------------------------
--Inserção de dados
-------------------------------------------
--2a

--Pacientes
INSERT INTO PACIENTE (ID, Nome, Numero_do_cartao, Data_nascimento, CPF, Telefone, E_mail) VALUES
(1,'JAIR',10111,'20/08/2015',00011122200,991124111,'jair@gmail.com');

INSERT INTO PACIENTE (ID, Nome, Numero_do_cartao, Data_nascimento, CPF, Telefone, E_mail) VALUES
(2,'ANA',10111,'20/02/2000',00011122211,991124222,'ana@gmail.com');

INSERT INTO PACIENTE (ID, Nome, Numero_do_cartao, Data_nascimento, CPF, Telefone, E_mail) VALUES
(3,'CARLA',10111,'10/05/2010',00011122222,991124333,'carla@gmail.com');

-------------------------------------------
--Médicos
INSERT INTO MEDICO (ID, Nome, Codigo_CRM, Estado_CRM, Especialidade, Telefone, E_mail) VALUES
(1,'PEDRO',11111,'SC','CLINICO GERAL',991127889,'pedro@gmail.com');

INSERT INTO MEDICO (ID, Nome, Codigo_CRM, Estado_CRM, Especialidade, Telefone, E_mail) VALUES
(2,'CAROL',22222,'RS','PEDIATRA',991127774,'carol@gmail.com');

-------------------------------------------
--Consultas
INSERT INTO CONSULTA (ID,Cod_Medico,Cod_Paciente, Data_) VALUES
(1,'PEDRO',1,'26/08/2020');

INSERT INTO CONSULTA (ID,Cod_Medico,Cod_Paciente, Data_) VALUES
(2,'CAROL',2,'20/08/2020');

INSERT INTO CONSULTA (ID,Cod_Medico,Cod_Paciente, Data_) VALUES
(3,'CAROL',3,'22/08/2020');

-------------------------------------------
--Consultas
-------------------------------------------
--3a

SELECT CONSULTA.ID, PACIENTE.NOME, PACIENTE.TELEFONE, MEDICO.NOME, MEDICO.ESPECIALIDADE, CONSULTA.DATA_
FROM CONSULTA
JOIN PACIENTE ON CONSULTA.ID = PACIENTE.ID 
JOIN MEDICO ON  CONSULTA.ID = MEDICO.ID ;










