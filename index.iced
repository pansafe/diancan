express = require('express')
path=require('path');
app = express();
fs=require 'fs'
app.configure ->
  app.set('views', __dirname + '/views');
  app.set('view engine', 'jade');
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(app.router);
  app.use(express.static(__dirname));

readData=->
  try
    return JSON.parse fs.readFileSync('recipe.txt','utf8')
  catch e
    return {items:{}}
writeDate=(data)->
  fs.writeFileSync 'recipe.txt',JSON.stringify(data,null,'  '),'utf8'
app.get '/',(req,res)->
  data=readData()
  res.render 'default.jade',data
app.post '/add',(req,res)->
  data=readData()
  data.items[req.body.name]=req.body.dish
  writeDate(data)
  res.statusCode=302
  res.setHeader 'Location','./'
  res.end()

app.listen(Number(process.argv[2]),->)