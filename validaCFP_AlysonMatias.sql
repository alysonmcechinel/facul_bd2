create table VerificaCPF(
nome varchar(50),
cpf varchar(14)
);

INSERT into VerificaCPF values('Jao', '715.156.290-07');
INSERT into VerificaCPF values('Mariaa', '111.222.333-44');

SELECT cpf
if(SUBSTRING(cpf, 13,2)= CONCAT(@dig:=(SUBSTRING(cpf, 1,1) + SUBSTRING(cpf, 2,1)*2 +  SUBSTRING(cpf, 3,1)*3 +
										SUBSTRING(cpf, 5,1)*4 + SUBSTRING(cpf, 6,1)*5 + SUBSTRING(cpf, 7,1)*6 + 
										SUBSTRING(cpf, 9,1)*7 + SUBSTRING(cpf, 10,1)*8 + SUBSTRING(cpf, 11,1)*9) % 11 % 10,
										(SUBSTRING(cpf, 2,1) + SUBSTRING(cpf, 3,1)*2 + SUBSTRING(cpf, 5,1)*3 + 
										SUBSTRING(cpf, 6,1)*4 + SUBSTRING(cpf, 7,1)*5 + SUBSTRING(cpf, 9,1)*6 + 
										SUBSTRING(cpf, 10,1)*7 + SUBSTRING(cpf, 11,1)*8 + @dig * 9) % 11 % 10), 'Valido', 'Invalido' as Valido
FROM VerificaCPF;