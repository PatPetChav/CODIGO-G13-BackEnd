// function hola(nombre){

function hola(nombre,primercallback){
    setTimeout(() => {
        console.log("hola " + nombre)        
        primercallback(nombre);
    }, 500);
}

function hablar(nombre,segundocallback){
    setTimeout(() => {
        console.log("como te va " + nombre)    
        segundocallback(nombre);
    }, 500);
    
}

function adios(nombre){
    console.log("adios " + nombre)
}

let nom ="Patty";
//hola(nom);
hola(nom,function(nombre){
    hablar(nombre,function(nombre){
        adios(nombre);
    })
});
//hablar(nom);