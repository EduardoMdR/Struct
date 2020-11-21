// console.log("Hello Wolrd!")

/******** Array ********/

// var a ,b;
// [a , b] = [1 ,2]
// var [c, d] = [3 , 4]
// console. log(a, b, c ,d);
// [c, d] = [d ,c]
// console. log(a, b, c ,d);

// const [um, , tres] = [1 , 2 ,3]
// console.log(um ,tres);

// function getFruits(){
//     return ['apple', 'banana', 'orange']
// }
// const [fruta1, fruta2, fruta3] = getFruits();
// console.log(fruta1, fruta2 ,fruta3);

// const [x, y, ...z] = [0 ,9 ,8 ,7 ,6 ,5];
// console.log(x ,y ,z)


/******** Objetos ********/

// const {u, i} = {
//     u: 1,
//     i: 2
// }
// console.log(u, i);

// const {u, i:{a, b:{c}}} = {
//     u: 1,
//     i: {
//         a: 99,
//         b: {
//             c:98
//         }
//     }
// }
// console.log(u, a, c);

// const {outro: other, nome: name} = {
//     outro: 3,
//     nome: 4
// }
// console.log(other, name);

// const legume1 = 'alface';
// const legume2 = 'cenoura';
// const sauce = 'molho';
// const salada = {
//     legume1,
//     legume2,
//     legume3: sauce
// }
// console.log(salada);

/******** Parametros de Função ********/

// function setStudent(options){
//     return{
//         name: options.name, age: options.age, school: options.school
//     }
// }
// function setTeacher({Name, age, subject}){
//     return{
//         Name, age, subject
//     }
// }
// const student = setStudent({name: 'Edu', age: 19, school: 'unB'});
// const [Name, age, subject] = ['Adail', 40, 'Calculo'];
// const teacher = setTeacher({Name, age, subject});
// console.log(student, teacher)