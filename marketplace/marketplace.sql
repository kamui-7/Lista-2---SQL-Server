CREATE DATABASE db_marketplace;

USE db_marketplace;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NULL,
	Foto VARCHAR(255) NULL,
);


CREATE TABLE tb_categoria (
	Id INT NOT NULL PRIMARY KEY,
	Categoria VARCHAR(255),
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Valor FLOAT NOT NULL,
	Imagem VARCHAR(255) NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categoria (Id),
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	);

CREATE TABLE compras (
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id),
	Dataa DATE NOT NULL,
);


