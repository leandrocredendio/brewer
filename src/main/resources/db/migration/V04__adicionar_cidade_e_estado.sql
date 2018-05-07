CREATE TABLE tb_estado (
    codigo BIGINT(20) PRIMARY KEY,
    id_estado_ibge BIGINT(20) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE tb_cidade (
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_estado BIGINT(20) NOT NULL,
    FOREIGN KEY (codigo_estado) REFERENCES tb_estado(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (1,11,'Rondônia','RO');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (2,12,'Acre','AC');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (3,13,'Amazonas','AM');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (4,14,'Roraima','RR');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (5,15,'Pará','PA');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (6,16,'Amapá','AP');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (7,17,'Tocantins','TO');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (8,21,'Maranhão','MA');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (9,22,'Piauí','PI');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (10,23,'Ceará','CE');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (11,24,'Rio Grande do Norte','RN');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (12,25,'Paraíba','PB');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (13,26,'Pernambuco','PE');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (14,27,'Alagoas','AL');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (15,28,'Sergipe','SE');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (16,29,'Bahia','BA');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (17,31,'Minas Gerais','MG');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (18,32,'Espírito Santo','ES');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (19,33,'Rio de Janeiro','RJ');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (20,35,'São Paulo','SP');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (21,41,'Paraná','PR');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (22,42,'Santa Catarina','SC');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (23,43,'Rio Grande do Sul','RS');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (24,50,'Mato Grosso do Sul','MS');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (25,51,'Mato Grosso','MT');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (26,52,'Goiás','GO');
INSERT INTO tb_estado (codigo, id_estado_ibge, nome, sigla) VALUES (27,53,'Distrito Federal','DF');


INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Rio Branco', 2);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Cruzeiro do Sul', 2);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Salvador', 16);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Porto Seguro', 16);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Santana', 16);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Belo Horizonte', 17);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Uberlândia', 17);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Montes Claros', 17);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('São Paulo', 20);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Ribeirão Preto', 20);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Campinas', 20);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Santos', 20);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Florianópolis', 22);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Criciúma', 22);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Camboriú', 22);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Lages', 22);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Goiânia', 26);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Itumbiara', 26);
INSERT INTO tb_cidade (nome, codigo_estado) VALUES ('Novo Brasil', 26);