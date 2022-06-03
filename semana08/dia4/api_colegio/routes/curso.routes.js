const express = require('express');
const CursoService = require('../services/curso.service');

const validatorHandler = require('../middlewares/validator.handler');
const {createCursoSchema} = require('../schemas/curso.schema');

function cursoApi(app){
    const router = express.Router();
    app.use("/curso",router);

    const objCursoService = new CursoService();

    router.get("/",async function(req,res){
        try{
            const cursos = await objCursoService.getAll();
            res.status(200).json({
                status:true,
                content:cursos
            })
        }catch(err){
            console.log(err)
        }
    })

    router.post("/",
        validatorHandler(createCursoSchema,'body')
        ,async function(req,res){
        const {body: curso} = req;
        console.log(curso);
        try{
            const crearCurso = await objCursoService.create({curso});
            res.status(201).json({
                status:true,
                content:crearCurso
            })
        }catch(err){
            console.log(err);
        }
    })
}

module.exports = cursoApi;