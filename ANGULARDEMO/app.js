const express = require('express')

const app = express()
app.use(express.static(__dirname+'/HelloAngular/dist/HelloAngular'))

app.get('/',(req,res)=>{
    //do nothing loads index.html
})

app.listen(8000,function(){
    console.log('listening on port 8000')
})