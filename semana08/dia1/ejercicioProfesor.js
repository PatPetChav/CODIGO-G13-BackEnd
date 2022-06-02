//promesas
const os = require("os");
tam = 1024

function memoria(capacidad,tipo){
    return new Promise((resolve,reject)=>{
        let memoria_convertida = capacidad / tam;
        console.log("MEMORIA EN " + tipo + " : " + memoria_convertida.toFixed(2));
        resolve(memoria_convertida);
    }) 

}

console.log("MEMORIA USANDO PROMESAS : ")
    memoria(os.totalmem(),'KB')
        .then((kb)=>memoria(kb,'MB'))
        .then((Mb)=>memoria(Mb,'GB'))