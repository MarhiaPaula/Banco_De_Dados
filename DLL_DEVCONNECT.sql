--DDL
CREATE DATABASE db_DevConnect;

GO


 CREATE TABLE tb_usuario(
  id INT IDENTITY(1,1) PRIMARY KEY
 ,nome_completo NVARCHAR(250)  UNIQUE NOT NULL
 ,nome_usuario NVARCHAR(50) UNIQUE NOT NULL
 ,email NVARCHAR (250) UNIQUE NOT NULL
 ,foto_perfil_url NVARCHAR(150) NULL
 );
 GO

 SELECT * FROM tb_usuario;

 CREATE TABLE tb_publicacao(
  id INT IDENTITY(1,1) PRIMARY KEY
 ,descricao NVARCHAR(250) NULL
 ,imagem_url NVARCHAR(150) NOT NULL
 ,data_publicacao DATE NOT NULL

 ,FOREIGN KEY (usuario_id ) REFERENCES tb_usuario(id)
  );
 

  SELECT * FROM tb_publicacao;

  CREATE TABLE tb_curtida(
  id INT IDENTITY(1,1) PRIMARY KEY
  ,usuario_id INT NOT NULL
  ,publicacao_id INT NOT NULL
  ,FOREIGN KEY (usuario_id) REFERENCES tb_usuario(id)
  ,FOREIGN KEY (publicacao_id ) REFERENCES tb_usuario(id)
  );
 
  SELECT * FROM tb_curtida;

  CREATE TABLE tb_comentario(
  id INT IDENTITY(1, 1) PRIMARY KEY
  ,usuario_id NVARCHAR UNIQUE NOT NULL
  ,publicacao_id INT NOT NULL
  ,texto NVARCHAR(500) NOT NULL
  ,data_comentario DATE NOT NULL 
  ,FOREIGN KEY (usuario_id) REFERENCES tb_usuario(id),
  ,FOREIGN KEY (publicacao_id ) REFERENCES tb_publicacao(id)
  );

  SELECT * FROM tb_comentario;


CREATE TABLE tb_seguidor( 
 );
 
 SELECT * FROM tb_seguidor;