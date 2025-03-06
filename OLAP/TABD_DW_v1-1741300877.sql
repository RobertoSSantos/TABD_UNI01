-- Tabelas
CREATE TABLE tb_local (
	id_local integer NOT null,
	cidade varchar2(255) NOT null,
	estado varchar2(255) NOT null
);


CREATE TABLE tb_celular (
	id_celular integer NOT null,
	modelo varchar2(255) NOT null,
	marca varchar2(255) NOT null
);

CREATE TABLE tb_estado_civil (
	id_estado_civil integer NOT null,
	estado_civil varchar2(255) NOT null
);

CREATE TABLE tb_data_compra (
	id_data_compra integer NOT null,
	quadrimestre integer NOT null,
	ano integer NOT null
);

CREATE TABLE tb_fato (
	id_fato integer NOT null,
	id_local integer NOT null,
	id_celular integer NOT null,
	id_estado_civil integer NOT null,
	id_data_compra integer NOT null,
	quantidade integer NOT null,
	valor numeric NOT null
);

CREATE TABLE tb_concorrente (
	id_concorrente integer NOT null,
	id_data_compra integer NOT null,
	quantidade integer NOT null,
	valor numeric NOT null
);

-- Chaves primárias
ALTER TABLE tb_local ADD CONSTRAINT PK_local PRIMARY KEY (id_local);
ALTER TABLE tb_celular ADD CONSTRAINT PK_celular PRIMARY KEY (id_celular);
ALTER TABLE tb_estado_civil ADD CONSTRAINT PK_estado_civil PRIMARY KEY (id_estado_civil);
ALTER TABLE tb_data_compra ADD CONSTRAINT PK_data_compra PRIMARY KEY (id_data_compra);
ALTER TABLE tb_fato ADD CONSTRAINT PK_fato PRIMARY KEY (id_fato);
ALTER TABLE tb_concorrente ADD CONSTRAINT PK_concorrente PRIMARY KEY (id_concorrente);


-- Sequencias
CREATE SEQUENCE SQ_fato;
CREATE SEQUENCE SQ_concorrente;
CREATE SEQUENCE SQ_data_compra;
CREATE SEQUENCE SQ_estado_civil;
CREATE SEQUENCE SQ_celular;
CREATE SEQUENCE SQ_local;


-- Chaves estrangeiras
ALTER TABLE tb_fato ADD CONSTRAINT tb_local_fato FOREIGN KEY (id_local) REFERENCES tb_local(id_local);
ALTER TABLE tb_fato ADD CONSTRAINT tb_celular_fato FOREIGN KEY (id_celular) REFERENCES tb_celular(id_celular);
ALTER TABLE tb_fato ADD CONSTRAINT tb_estado_civil_fato FOREIGN KEY (id_estado_civil) REFERENCES tb_estado_civil(id_estado_civil);
ALTER TABLE tb_fato ADD CONSTRAINT tb_data_compra_fato FOREIGN KEY (id_data_compra) REFERENCES tb_data_compra(id_data_compra);
ALTER TABLE tb_concorrente ADD CONSTRAINT tb_data_compra_concorrente FOREIGN KEY (id_data_compra) REFERENCES tb_data_compra(id_data_compra);