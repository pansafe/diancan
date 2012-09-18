express = require('express')
path=require('path');
app = express();
app.configure ->
  app.set('views', __dirname + '/views');
  app.set('view engine', 'jade');
  app.use(express.bodyParser());
  app.use(express.methodOverride());
  app.use(app.router);
  app.use(express.static(__dirname));

data=
  items:{}
app.get '/',(req,res)->
  res.render 'default.jade',data
app.post '/add',(req,res)->
  data.items[req.body.name]=req.body.dish
  res.statusCode=302
  res.setHeader 'Location','./'
  res.end()

app.listen(Number(process.argv[2]),->)