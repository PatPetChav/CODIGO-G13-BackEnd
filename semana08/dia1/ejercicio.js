const os = require("os");

function kilobytes(memoria){
    return new Promise(function(resolve,reject){
        setTimeout(function(){
            let memoKilo = memoria/1024
            console.log("Memoria en Kilobyte " + memoKilo)
            resolve(memoKilo);
            reject("hay un error");
        },500)
    })
}

function megabytes(memoriaKilo){
    return new Promise(function(resolve,reject){
        setTimeout(function(){
            let memoMega = memoriaKilo/1024
            console.log("Memoria en Megabyte " + memoMega)
            resolve(memoMega);
            reject("hay un error");
        },500)
    })
}

function gigabytes(memoriaMega){
    return new Promise(function(resolve,reject){
        setTimeout(function(){
            let memoGiga = memoriaMega/1024
            console.log("Memoria en Gigabyte " + memoGiga)
            resolve(memoGiga);
            reject("hay un error");
        },500)
    })
}

let memoria  = os.totalmem();

kilobytes(memoria)
    .then(megabytes)
    .then(gigabytes);
    