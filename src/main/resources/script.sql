CREATE TABLE usuario(id_usuario serial PRIMARY KEY, nome varchar(60),email varchar(60), senha varchar(255));
CREATE TABLE perfil(id_perfil serial PRIMARY KEY, nome varchar(40));

CREATE TABLE usuario_perfil(id_usuario int references usuario(id_usuario),
							id_perfil int references perfil(id_perfil),
							data_criacao date, constraint pk_usuario_perfil
							PRIMARY KEY(id_usuario,id_perfil));
