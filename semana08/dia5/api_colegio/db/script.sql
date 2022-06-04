CREATE TABLE tbl_usuario(  
    usuario_id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    usuario_nombre VARCHAR(255) not null,
    usuario_password VARCHAR(255) not null
) ;