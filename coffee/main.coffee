
get = (url, cb) ->
  req = new XMLHttpRequest
  req.open 'GET', url
  req.send()
  req.onload = ->
    data = JSON.parse req.response
    cb data

app = new Vue
  el: '#app'
  data:
    files: []

get 'http://localhost:3000', (data) ->
  app.$data.files = data