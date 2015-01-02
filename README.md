noflo-runtime-websocket
=======================

NoFlo runtime for execution on Node.js over WebSockets

This branch is an experiment in getting the noflo-runtime-websocket tests to work for any websocket runtime.

installing
----------

1. Install [Node.js](http://nodejs.org/).

2. Install the grunt command-line tools:

    ```
    sudo npm install -g grunt-cli
    ```

3. Clone this package and install its dependencies:

    ```
    git clone https://github.com/chadrik/noflo-runtime-websocket -b tests-decoupled
    cd noflo-runtime-websocket
    npm install
    ```

testing a runtime
-----------------

1. Edit `spec/TestNetwork.coffee`. Uncomment the following code (by removing the coffeescript block comments `###`) and change the name and port to match your runtime:

  ```coffeescript
  tests.testRuntime( 'protoflo',
    (connectClient) ->
      connectClient()
    ->
    3569  # port
  )
  ```

2. Start your runtime's websocket server.
3. Run the tests:

  ```
  npm test
  ```

