--triggers disparadores
select alumno_nombre,
concat(replace(lower(alumno_nombre),' ', ''),'@tecsup.edu.pe')
from tbl_alumno; 

DROP TRIGGER IF EXISTS tg_correo_alumno;

delimiter $$

CREATE TRIGGER tg_correo_alumno
BEFORE INSERT
on tbl_alumno FOR EACH ROW
BEGIN
    SET NEW.alumno_email = concat(replace(lower(new.alumno_nombre),' ', ''),'@tecsup.edu.pe');
END
$$

DELIMITER ;

SELECT * FROM tbl_alumno;

insert into tbl_alumno(alumno_nombre,alumno_celular,alumno_github)
values('andrea cano','8889898','https://www.githubt.com/andreacano');

