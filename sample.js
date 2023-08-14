const express = require('express');
const app = express();

app.get('/', (req,res)=>{
    res.send("WELCOME TO MY APPLICATION");
});

app.listen(3000, function (){
    console.log("APP listening on port 3000")
});