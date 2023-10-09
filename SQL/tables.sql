CREATE TABLE `CS_SEXO` (
	`CS_SEXO` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO `CS_SEXO` VALUES ('F', 'Masculino', 'Sexo do paciente.');
INSERT INTO `CS_SEXO` VALUES ('M', 'Feminino', 'Sexo do paciente.');


CREATE TABLE `CS_RACA` (
	`CS_RACA` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO `CS_RACA` VALUES (1, 'Branca', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');
INSERT INTO `CS_RACA` VALUES (2, 'Preta', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');
INSERT INTO `CS_RACA` VALUES (3, 'Amarela', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');
INSERT INTO `CS_RACA` VALUES (4, 'Parda', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');
INSERT INTO `CS_RACA` VALUES (5, 'Indígena', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');
INSERT INTO `CS_RACA` VALUES (9, 'Ignorado', 'Cor ou raça 
declarada pelo 
paciente:
Branca; Preta; 
Amarela; Parda 
(pessoa que se 
declarou mulata, 
cabocla, cafuza, 
mameluca ou 
mestiça de preto 
com pessoa de 
outra cor ou raça); 
e, Indígena.
');

CREATE TABLE `CS_ESCOL_N` (
	`CS_ESCOL_N` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `CS_ESCOL_N` VALUES (1, 'Sem escolaridade/Analfabeto', 'Nível de escolaridade do paciente.');
INSERT INTO `CS_ESCOL_N` VALUES (2, 'Fundamental 1º ciclo (1ª a 5ª série)', 'Nível de escolaridade do paciente.');
INSERT INTO `CS_ESCOL_N` VALUES (3, 'Médio (1º ao 3º ano)', 'Nível de escolaridade do paciente.');
INSERT INTO `CS_ESCOL_N` VALUES (4, 'Superior', 'Nível de escolaridade do paciente.');
INSERT INTO `CS_ESCOL_N` VALUES (5, 'Não se aplica', 'Nível de escolaridade do paciente.');
INSERT INTO `CS_ESCOL_N` VALUES (9, 'Ignorado', 'Nível de escolaridade do paciente.');

CREATE TABLE `CS_ZONA` (
	`CS_ZONA` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `CS_ZONA` VALUES (1, 'Urbana', 'Zona geográfica do endereço de residência do paciente.');
INSERT INTO `CS_ZONA` VALUES (2, 'Rural', 'Zona geográfica do endereço de residência do paciente.');
INSERT INTO `CS_ZONA` VALUES (3, 'Periurbana', 'Zona geográfica do endereço de residência do paciente.');
INSERT INTO `CS_ZONA` VALUES (4, 'Ignorado', 'Zona geográfica do endereço de residência do paciente.');
INSERT INTO `CS_ZONA` VALUES (5, 'Não se aplica', 'Zona geográfica do endereço de residência do paciente.');
INSERT INTO `CS_ZONA` VALUES (9, 'Ignorado', 'Zona geográfica do endereço de residência do paciente.');


CREATE TABLE `FEBRE` (
	`FEBRE` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `FEBRE` VALUES (1, 'Sim', 'Paciente teve Febre?');
INSERT INTO `FEBRE` VALUES (2, 'Não', 'Paciente teve Febre?');
INSERT INTO `FEBRE` VALUES (9, 'Ignorado', 'Paciente teve Febre?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `TOSSE` (
	`TOSSE` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `TOSSE` VALUES (1, 'Sim', 'Paciente aciente apresentou tosse?');
INSERT INTO `TOSSE` VALUES (2, 'Não', 'Paciente aciente apresentou tosse?');
INSERT INTO `TOSSE` VALUES (9, 'Ignorado', 'Paciente aciente apresentou tosse?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `GARGANTA` (
	`GARGANTA` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `GARGANTA` VALUES (1, 'Sim', 'Paciente apresentou dor de garganta');
INSERT INTO `GARGANTA` VALUES (2, 'Não', 'Paciente apresentou dor de garganta');
INSERT INTO `GARGANTA` VALUES (9, 'Ignorado', 'Paciente apresentou dor de garganta');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `DISPNEIA` (
	`DISPNEIA` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `DISPNEIA` VALUES (1, 'Sim', 'Paciente apresentou dispneia');
INSERT INTO `DISPNEIA` VALUES (2, 'Não', 'Paciente apresentou dispneia');
INSERT INTO `DISPNEIA` VALUES (9, 'Ignorado', 'Paciente apresentou dispneia');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `DESC_RESP` (
	`DESC_RESP` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `DESC_RESP` VALUES (1, 'Sim', 'Paciente apresentou desconforto respiratorio');
INSERT INTO `DESC_RESP` VALUES (2, 'Não', 'Paciente apresentou desconforto respiratorio');
INSERT INTO `DESC_RESP` VALUES (9, 'Ignorado', 'Paciente apresentou desconforto respiratorio');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `SATURACAO` (
	`SATURACAO` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `SATURACAO` VALUES (1, 'Sim', 'Paciente apresentou saturação O2< 95%?');
INSERT INTO `SATURACAO` VALUES (2, 'Não', 'Paciente apresentou saturação O2< 95%?');
INSERT INTO `SATURACAO` VALUES (9, 'Ignorado', 'Paciente apresentou saturação O2< 95%?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `DIARREIA` (
	`DIARREIA` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `DIARREIA` VALUES (1, 'Sim', 'Paciente apresentou diarreia');
INSERT INTO `DIARREIA` VALUES (2, 'Não', 'Paciente apresentou diarreia');
INSERT INTO `DIARREIA` VALUES (9, 'Ignorado', 'Paciente apresentou diarreia');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE `VOMITO` (
	`VOMITO` INT NULL DEFAULT NULL,
	`DESC` VARCHAR(50) NULL DEFAULT NULL,
	`INFO` VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci';

INSERT INTO `VOMITO` VALUES (1, 'Sim', 'Paciente apresentou VOMITO');
INSERT INTO `VOMITO` VALUES (2, 'Não', 'Paciente apresentou VOMITO');
INSERT INTO `VOMITO` VALUES (9, 'Ignorado', 'Paciente apresentou VOMITO');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE FADIGA (
    FADIGA INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO FADIGA VALUES (1, 'Sim', 'Paciente apresentou fadiga?');
INSERT INTO FADIGA VALUES (2, 'Não', 'Paciente apresentou fadiga?');
INSERT INTO FADIGA VALUES (9, 'Ignorado', 'Paciente apresentou fadiga?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE PERD_OLFT (
    PERD_OLFT INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO PERD_OLFT VALUES (1, 'Sim', 'Paciente apresentou perda do olfato?');
INSERT INTO PERD_OLFT VALUES (2, 'Não', 'Paciente apresentou perda do olfato?');
INSERT INTO PERD_OLFT VALUES (9, 'Ignorado', 'Paciente apresentou perda do olfato?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE PERD_PALA (
    PERD_PALA INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO PERD_PALA VALUES (1, 'Sim', 'Paciente apresentou perda do paladar?');
INSERT INTO PERD_PALA VALUES (2, 'Não', 'Paciente apresentou perda do paladar?');
INSERT INTO PERD_PALA VALUES (9, 'Ignorado', 'Paciente apresentou perda do paladar?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE FATOR_RISC (
    FATOR_RISC INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO FATOR_RISC VALUES (1, 'Sim', 'Paciente apresenta algum fator de risco');
INSERT INTO FATOR_RISC VALUES (2, 'Não', 'Paciente apresenta algum fator de risco');
INSERT INTO FATOR_RISC VALUES (9, 'Ignorado', 'Paciente apresenta algum fator de risco');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE CARDIOPATI (
    CARDIOPATI INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO CARDIOPATI VALUES (1, 'Sim', 'Paciente possui Doença Cardiovascular Crônica?');
INSERT INTO CARDIOPATI VALUES (2, 'Não', 'Paciente possui Doença Cardiovascular Crônica?');
INSERT INTO CARDIOPATI VALUES (9, 'Ignorado', 'Paciente possui Doença Cardiovascular Crônica?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE ASMA (
    ASMA INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO ASMA VALUES (1, 'Sim', 'Paciente possui Asma?');
INSERT INTO ASMA VALUES (2, 'Não', 'Paciente possui Asma?');
INSERT INTO ASMA VALUES (9, 'Ignorado', 'Paciente possui Asma?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE PNEUMOPATI (
    PNEUMOPATI INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO PNEUMOPATI VALUES (1, 'Sim', 'Paciente possui outra pneumopatia crônica?');
INSERT INTO PNEUMOPATI VALUES (2, 'Não', 'Paciente possui outra pneumopatia crônica?');
INSERT INTO PNEUMOPATI VALUES (9, 'Ignorado', 'Paciente possui outra pneumopatia crônica?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE UTI (
    UTI INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO UTI VALUES (1, 'Sim', 'O paciente foi internado em UTI?');
INSERT INTO UTI VALUES (2, 'Não', 'O paciente foi internado em UTI?');
INSERT INTO UTI VALUES (9, 'Ignorado', 'O paciente foi internado em UTI?');

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE HOSPITAL (
    HOSPITAL INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO HOSPITAL VALUES (1, 'Sim', 'O paciente foi internado?');
INSERT INTO HOSPITAL VALUES (2, 'Não', 'O paciente foi internado?');
INSERT INTO HOSPITAL VALUES (9, 'Ignorado', 'O paciente foi internado?');


CREATE TABLE EVOLUCAO (
    EVOLUCAO INT NULL DEFAULT NULL,
    `DESC` VARCHAR(50) NULL DEFAULT NULL,
    INFO VARCHAR(300) NULL DEFAULT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
;
INSERT INTO EVOLUCAO VALUES (1, 'Cura', 'Evolução do caso');
INSERT INTO EVOLUCAO VALUES (2, 'Óbito', 'Evolução do caso');
INSERT INTO EVOLUCAO VALUES (3, 'Óbito por outras causas', 'Evolução do caso');
INSERT INTO EVOLUCAO VALUES (9, 'Ignorado', 'Evolução do caso');