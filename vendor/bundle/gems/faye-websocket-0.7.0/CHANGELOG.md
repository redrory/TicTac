### 0.7.0 / 2013-09-09

* Allow the server to send custom headers with EventSource responses


### 0.6.3 / 2013-08-04

* Stop implicitly depending on Rack 1.4


### 0.6.2 / 2013-07-05

* Catch errors thrown by EventMachine and emit `error` and `close` events


### 0.6.1 / 2013-05-12

* Release a gem without log and pid files in it


### 0.6.0 / 2013-05-12

* Add support for custom headers


### 0.5.0 / 2013-05-05

* Extract the protocol handlers into the `websocket-driver` library
* Support the `rack.hijack` API
* Add support for Rainbows 4.5 and Puma
* Officially support JRuby and Rubinius


### 0.4.7 / 2013-02-14

* Emit the `close` event if TCP is closed before CLOSE frame is acked
* Treat the `Upgrade: websocket` header case-insensitively because of IE10
* Do not suppress headers in the Thin and Rainbows adapters unless the status is `101`


### 0.4.6 / 2012-07-09

* Add `Connection: close` to EventSource response


### 0.4.5 / 2012-04-06

* Add WebSocket error code `1011`.
* Handle URLs with no path correctly by sending `GET /`


### 0.4.4 / 2012-03-16

* Fix installation on JRuby with a platform-specific gem


### 0.4.3 / 2012-03-12

* Make `extconf.rb` a no-op on JRuby


### 0.4.2 / 2012-03-09

* Port masking-function C extension to Java for JRuby


### 0.4.1 / 2012-02-26

* Treat anything other than an `Array` as a string when calling `send()`
* Fix error loading UTF-8 validation code on Ruby 1.9 with `-Ku` flag


### 0.4.0 / 2012-02-13

* Add `ping()` method to server-side `WebSocket` and `EventSource`
* Buffer `send()` calls until the draft-76 handshake is complete


### 0.3.0 / 2012-01-13

* Add support for `EventSource` connections
* Support the Thin, Rainbows and Goliath web servers


### 0.2.0 / 2011-12-21

* Add support for `Sec-WebSocket-Protocol` negotiation
* Support `hixie-76` close frames and 75/76 ignored segments
* Improve performance of HyBi parsing/framing functions
* Write masking function in C


### 0.1.2 / 2011-12-05

* Make `hixie-76` sockets work through HAProxy


### 0.1.1 / 2011-11-30

* Fix `add_event_listener()` interface methods


### 0.1.0 / 2011-11-27

* Initial release, based on WebSocket components from Faye

