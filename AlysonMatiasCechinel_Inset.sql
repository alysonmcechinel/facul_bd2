INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010101, 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL');

INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010102, 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA');

INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010103, 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE');

INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010104, 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA');

INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010105, 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');

INSERT into Alunos(MAT, nome, endereço, cidade)
values(2015010106, 'JOSUÉLISSON CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');
---------------------------------------------------------------------

insert into Disciplinas( COD_DISC, nome_disc,carga_hor)
values ('BD', 'BANCO DE DADOS', 100);

insert into Disciplinas( COD_DISC, nome_disc,carga_hor)
values('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', 100);

insert into Disciplinas( COD_DISC, nome_disc,carga_hor)
values('WEB', 'AUTORIA WEB', 50);

insert into Disciplinas( COD_DISC, nome_disc,carga_hor)
values('ENG', 'ENGENHARIA DE SOFTWARE', 80);

---------------------------------------------------------------------

insert into Professores (COD_PROF, nome, endereço,cidade)
values (212131, 'NICKERSON FERREIRA', 'RUA MANAÍRA', 'JOÃO PESSOA');

insert into Professores (COD_PROF, nome, endereço,cidade)
values(122135, 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', 'NATAL');

insert into Professores (COD_PROF, nome, endereço,cidade)
values(192011, 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', 'NATAL');

---------------------------------------------------------------------

insert into Turma(COD_DISC, COD_TURMA, COD_PROF, ano, horario)
values('BD', 1, 212131, 2015, '11H-12H');

insert into Turma(COD_DISC, COD_TURMA, COD_PROF, ano, horario)
values('BD', 2, 212131, 2015, '13H-14H');

insert into Turma(COD_DISC, COD_TURMA, COD_PROF, ano, horario)
values('POO', 1, 192011, 2015, '08H-09H');

insert into Turma(COD_DISC, COD_TURMA, COD_PROF, ano, horario)
values('WEB', 1, 192011, 2015, '07H-08H');

insert into Turma(COD_DISC, COD_TURMA, COD_PROF, ano, horario)
values('ENG', 1, 122135, 2015, '10H-11H');

---------------------------------------------------------------------
insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010101, 'BD', 1, 212131, 2015, '100', '6,7');

insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010102, 'POO', 1, 192011, 2015, '72,3', '10');

insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010103, 'WEB', 1, 192011, 2015, '30', '8');

insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010104, 'ENG', 1, 122135, 2015, '81,5', '9,5');

insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010105, 'BD', 1, 212131, 2015, '75', '7,5');

insert into Historico  (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequencia, nota)
values(2015010106, 'BD', 2, 212131, 2015, '100', '8,5');