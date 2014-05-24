
require 'shelljs/global'
http = require 'http'
path = require 'path'

data = []

http.createServer (req, res) ->
  res.writeHead 200,
    'Content-Type': 'text/json'
    'Access-Control-Allow-Origin': '*'
  res.end (JSON.stringify data)
.listen 3000

goodToShow = ['.css', '.cirru', '.coffee', '.js']

dest = process.argv[2] or '.'
files = ls '-R', dest
for file in files
  if (path.extname file) in goodToShow
    if data.length > 10
      return
    data.push name: file, content: (cat file)

console.log 'done'