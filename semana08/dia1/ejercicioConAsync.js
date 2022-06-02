const os = require("os");
tam = 1024

async function memoria(capacidad,tipo){
    return new Promise((resolve,reject)=>{
        let memoria_convertida = capacidad / tam;
        //console.log("MEMORIA EN " + tipo + " : " + memoria_convertida.toFixed(2));
        resolve(memoria_convertida.toFixed(2));
    }) 
}

async function main(){
    let memokilo = await memoria(os.totalmem(),'KB');
    let memomega = await memoria(memokilo,'MB');
    let memogiga =await memoria(memomega,'GB');

    console.table(
        [
            {capacidad:'KB',tam:memokilo},
            {capacidad:'MB',tam:memomega},
            {capacidad:'GB',tam:memogiga},

        ]
    )
}

main();