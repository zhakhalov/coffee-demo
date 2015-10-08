express = require "express"
http = require "http"

app = express()

app.use(express.static("#{__dirname}/public"))

console.log "starting server..."
http.createServer(app).listen(8080)
