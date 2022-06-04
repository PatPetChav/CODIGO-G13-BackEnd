const Joi = require('joi');

const nombre = Joi.string().min(3).max(25);

const createCursoSchema = Joi.object({
    nombre : nombre.required()    
});

module.exports = {createCursoSchema}