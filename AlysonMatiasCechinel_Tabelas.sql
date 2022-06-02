create table Alunos
(
    MAT           INT NOT NULL,
    nome          VARCHAR(80)  NOT NULL,
    endereço      VARCHAR(40)  NOT NULL,
    cidade    	  VARCHAR(40)  NOT NULL,
    PRIMARY KEY (mat)
 );
 
create table Disciplinas
(
    COD_DISC           char(5) NOT NULL,
    nome_disc          VARCHAR(80)  NOT NULL,
    carga_hor      	   INT,
    PRIMARY KEY (COD_DISC)
 );

create table Professores  
(
    COD_PROF           INT NOT NULL,
    nome          VARCHAR(80)  NOT NULL,
    endereço      VARCHAR(40)  NOT NULL,
    cidade    	  VARCHAR(40)  NOT NULL,
    PRIMARY KEY (COD_PROF)
 );
 
create table Turma  
(
    COD_TURMA          INT NOT NULL,
    COD_DISC           CHAR(10) NOT NULL,
    COD_PROF      	   INT NOT NULL,
    ano    	           INT,
    horario    	       VARCHAR(40)  NOT NULL,
    CONSTRAINT fk_turma_disciplinas FOREIGN KEY (COD_DISC) REFERENCES Disciplinas (COD_DISC),
    CONSTRAINT fk_turma_professores FOREIGN KEY (COD_PROF) REFERENCES Professores (COD_PROF)
 );
 

create table Historico  
(
    MAT           INT NOT NULL,
    COD_DISC           CHAR(10) NOT NULL,
    COD_TURMA           INT NOT NULL,
    COD_PROF           INT NOT NULL,
    ANO            INT NOT NULL,
    frequencia          numeric(15,2),
    nota      numeric(15,2),
    CONSTRAINT fk_historico_disciplinas FOREIGN KEY (COD_DISC) REFERENCES Disciplinas (COD_DISC),
    CONSTRAINT fk_historico_professores FOREIGN KEY (COD_PROF) REFERENCES Professores (COD_PROF),
    CONSTRAINT fk_historico_alunos FOREIGN KEY (MAT) REFERENCES Alunos (MAT),
    CONSTRAINT fk_historico_turma FOREIGN KEY (ANO) REFERENCES Turma (ANO)
 );
 