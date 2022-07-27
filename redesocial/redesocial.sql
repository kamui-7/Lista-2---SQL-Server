CREATE DATABASE db_redesocial;

USE db_redesocial;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
);


CREATE TABLE tb_grupos (
	Id INT NOT NULL PRIMARY KEY,
	Grupo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Imagem VARCHAR(255) NOT NULL,
	FK_Usuario INT NOT NULL
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
);

CREATE TABLE tb_inscritos (
	FK_Usuario INT NOT NULL,
	FK_Grupos INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupos) REFERENCES tb_grupos (Id),
	Dataa DATE NOT NULL,
);

CREATE TABLE tb_postagem (
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Imagem VARCHAR(255) NOT NULL,
	DataPostagem DATE NOT NULL,
	FK_Usuario INT NOT NULL,
	FK_Grupos INT NOT NULL,
	FOREIGN KEY (FK_Grupos) REFERENCES tb_grupos (Id),
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	);

	

