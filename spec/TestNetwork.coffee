tests = require './network'

# example of testing a websocket runtime based on nodejs (e.g. noflo):
###
runtime = require '../runtime/network.js'
http = require 'http'
path = require 'path'

server = null
tests.testRuntime( 'noflo-nodejs',
  (connectClient) ->
    server = http.createServer ->
    rt = runtime server,
      baseDir: path.resolve __dirname, '../'
    server.listen 8080, connectClient
  ->
    server.close()
  8080  # port
)
###


# example of testing a websocket runtime that is already running:
###
tests.testRuntime( 'protoflo',
  (connectClient) ->
    connectClient()
  ->
  3569  # port
)
###

# example testing a websocket runtime by starting a server process (WIP):
###
spawn = require('child_process').spawn

child = null
tests.testRuntime( 'protoflo',
  (connectClient) ->
    child = spawn('python', ['-m', 'protoflo', 'runtime'])
    setTimeout(connectClient, 300)
  ->
    child.kill("SIGKILL")
  3569  # port
)
###
