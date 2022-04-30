delimiter $$
create PROCEDURE listar_alumnos()
BEGIN
    select * from tbl_alumno;
END
$$

DELIMITER ;

CALL listar_alumnos();

--PROCEDIMIENTO PARA MATRICULAR A UN ALUMNO
-- REGITRAR LA TABLA TBL_MATRICULA
-- REGITRAR LA TABLA TBL_MATRICULA_CURSO CON TODOS LOS CURSOS

delimiter $$

CREATE PROCEDURE sp_matricular_alumno(IN alu_id INT,IN niv_id, IN mod_id INT)
BEGIN
    --variables
    DECLARE mat_id INT;
    DECLARE tope INT;
    DECLARE contador INT;

    --registrar matricula
    insert into tbl_matricula(alumno_id,nivel_id,modulo_id )
    values(alu_id,niv_id,mod_id);

    select max(matricula_id) into mat_id  from tbl_matricula;

    --regitrar las matriculas_cursos
    select count(*) into tope from tbl_curso;
    SET contador = 1;
    bucle: LOOP

    END LOOP;

    FOR select curso_id AS cur_id from tbl_curso DO
        insert into tbl_matricula

    end FOR;

END
$$