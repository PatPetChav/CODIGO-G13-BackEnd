const express = require('express');
const app = express();

app.get("/",(req,res)=>{
    res.json({
        conten:'servidor activo'
    })

})

const port =5000;
app.listen(port,()=>console.log('servidor en http://localhost:'+port));

/****************trabajando con sequelize************ */
const Sequelize = require('sequelize');

const sequelize =new Sequelize({
    dialect:'sqlite',
    storage:'./database.sqlite'
})

sequelize.authenticate()
.then(()=>{
    console.log('conexion establecida')

})
.catch(err=>{
    console.log("error :" + err)
})

//creamos modelos
const Alumnos = sequelize.define(
    'alumnos',
    {
        nombre:Sequelize.STRING,
        emial:Sequelize.STRING        
    }
)

//migraciones
/*sequelize.sync({force:true})
.then(()=>{
    console.log("tablas migradas")
    //puedo poblar registros con
    Alumnos.bulkCreate(
        [
            {nombre:'Paty Perez',email:'paty@gmial.com'},
            {nombre:'Claudia Gonzales',email:'claudia@gmial.com'},
        ]
    ).then(function(){
        return Alumnos.findAll();        
    }).then(function(alumnos){
        console.log(alumnos)

    })


})*/

//creacion de endpoints
app.get('/alumno',(req,res)=>{
    Alumnos.findAll()
    .then(
        alumnos => res.json(alumnos)
    )
})

app.use(express.json()) // para aceptar json

app.post('/alumno',(req,res)=>{
    Alumnos.create(
        {
            nombre:req.body.nombre,
            emial:req.body.emial
        }
    ).then(function(alumnos){
        res.json(alumnos);
    })
})

app.put('/alumno/:id',(req,res)=>{
    Alumnos.findByPk(req.params.id)
    .then(function(alumnos){
        alumnos.update({
            nombre:req.body.nombre,
            emial:req.body.emial
        }).then(function(alumno){
            res.json(alumnos);
        })
    })
})

app.delete('/alumno/:id',(req,res)=>{
    Alumnos.findByPk(req.params.id)
    .then(function(alumnos){
        alumnos.destroy();
    }).then(function(alumnos){
        res.sendStatus(201)
    })
})