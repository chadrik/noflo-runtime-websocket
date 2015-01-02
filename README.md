noflo-runtime-websocket
=======================

NoFlo runtime for execution on Node.js over WebSockets

installing
----------

```
git clone https://github.com/chadrik/noflo-runtime-websocket -b tests-decoupled
cd noflo-runtime-websocket
npm install
```

testing a runtime
-----------------

1. Edit `spec/TestNetwork.coffee`. Uncomment the following code and change the name and port to match your runtime:

  ```coffeescript
  tests.testRuntime( 'protoflo',
    (connectClient) ->
      connectClient()
    ->
    3569  # port
  )
  ```

2. Start your runtime.
3. Run the test:

  ```
  npm tests
  ```

