const axios = require('axios'). default

// Usando as promises
auxios.get("")
    .then((response) => {
        console.log(response.data)
    })
    .catch((error) => {
        console.error(error.data)
    })
    .then(() => console.log("-----Acabou-----"))

// Usando async await
const getUser = async () => {

}