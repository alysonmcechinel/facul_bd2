CREATE TABLE IF NOT EXISTS `funcionarios` (
  `codf` INT NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  `idade` SMALLINT NULL DEFAULT NULL,
  `cpf` DECIMAL(11,0) NULL DEFAULT NULL,
  `cidade` CHAR(30) NULL DEFAULT NULL,
  `salario` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`codf`))


CREATE TABLE IF NOT EXISTS `pet` (
  `codp` INT NOT NULL,
  `nome` VARCHAR(4) NOT NULL,
  `idade` SMALLINT NOT NULL,
  `cidade` CHAR(20) NULL DEFAULT NULL,
  `cpf` DECIMAL(11,0) UNSIGNED NULL DEFAULT NULL,
  `doenca` VARCHAR(40) NOT NULL,
  `animal` CHAR(40) NOT NULL,
  `raça` CHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`codp`))

CREATE TABLE IF NOT EXISTS `veterinarios` (
  `cody` INT NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  `idade` INT NOT NULL,
  `especialidade` CHAR(20) NULL DEFAULT NULL,
  `cpf` DECIMAL(11,0) UNSIGNED NULL DEFAULT NULL,
  `cidade` VARCHAR(30) NULL DEFAULT NULL,
  `nclin` INT NULL DEFAULT NULL,
  PRIMARY KEY (`cody`),
  INDEX `nclin_idx` (`nclin` ASC) VISIBLE,
  CONSTRAINT `nclin`
    FOREIGN KEY (`nclin`)
    REFERENCES `clinicas` (`nclin`))

CREATE TABLE IF NOT EXISTS `consultas` (
  `condv` INT NOT NULL,
  `codp` INT NOT NULL,
  `data` TIMESTAMP NOT NULL,
  `hora` TIMESTAMP NOT NULL,
  PRIMARY KEY (`condv`, `codp`, `data`, `hora`),
  INDEX `codp_idx` (`codp` ASC) VISIBLE,
  CONSTRAINT `codp`
    FOREIGN KEY (`codp`)
    REFERENCES `pet` (`codp`),
  CONSTRAINT `codv`
    FOREIGN KEY (`condv`)
    REFERENCES `veterinarios` (`cody`))
	
	INSERT INTO `luizfelipebotinisilvestro`.`pet` (`codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`, `animal`, `raça`) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	
	
	INSERT INTO `pet` (`codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`, `animal`, `raça`) 
	VALUES (1, "Rex", 7, "Florianopolis", 20000200000, "Gripe", "Cão", "Poodle");
	INSERT INTO `pet` (`codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`, `animal`, `raça`) 
	VALUES (2, "Thor", 3, "Palhoca", 20000220000, "Fratura", "Gato", "Angorá");
	INSERT INTO `pet` (`codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`, `animal`, `raça`) 
	VALUES (3, "Lula", 2, "Biguacu", 22000200000, "Tendinite", "Hamster", "Chinês");
	INSERT INTO `pet` (`codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`, `animal`, `raça`) 
	VALUES (4, "Velox", 1, "Joinville", 11000110000, "Alergia", "Tartaruga", "Cágado");
	
	INSERT INTO `veterinarios` (`cody`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`, `nclin`) 
	VALUES (1, "Joao", 40, "Homeopatia", 10000100000, "Florianopolis", 1);
	INSERT INTO `veterinarios` (`cody`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`, `nclin`) 
	VALUES (2, "Maria", 42, "Cirurgia", 10000110000, "Blumenau", 2);
	INSERT INTO `veterinarios` (`cody`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`, `nclin`) 
	VALUES (3, "Pedro", 51, "Oncologia", 11000100000, "São José", 2);
	INSERT INTO `veterinarios` (`cody`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`, `nclin`) 
	VALUES (4, "Carlos", 28, "Anestesiologia", 11000110000, "Joinville", 2);
	INSERT INTO `veterinarios` (`cody`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`, `nclin`) 
	VALUES (5, "Marcia", 33, "Clinico Geral", 11000111000, "Biguacu", 3);