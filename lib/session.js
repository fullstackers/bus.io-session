var handshake = require('socket.io-handshake');

module.exports = function (config) {
  var fn = function (bus) {
    bus.io().use(fn.middleware);
  };
  fn.middleware = handshake(config);
  return fn;
};
