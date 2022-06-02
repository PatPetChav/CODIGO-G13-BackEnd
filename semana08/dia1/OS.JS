//TRABAJANDO CON EL SISTEMA OPERATIVO
const os = require("os");

console.log("arquitectura del procesador : " + os.arch());
console.log("sistema operativo : " + os.platform());
console.log("CPU : " + os.cpus().length);
console.log("Memoria RAM : " + os.totalmem()); //EN BYTES