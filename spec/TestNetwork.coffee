runtime = require '../runtime/network.js'
http = require 'http'
tests = require './network'
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
  8080
)

# example of a runtime that is already running:
###
tests.testRuntime( 'protoflo',
  (connectClient) ->
    connectClient()
  ->
  3569
)
###

# WIP of a runtime that starts a process:
###
spawn = require('child_process').spawn

child = null
tests.testRuntime( 'protoflo',
  (connectClient) ->
    child = spawn('python', ['-m', 'protoflo', 'runtime'])
    setTimeout(connectClient, 300)
  ->
    child.kill("SIGKILL")
  3569
)
###
