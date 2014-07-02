var handshake = require('socket.io-handshake');
var expressSession = require('express-session');
var RedisStore = require('connect-redis')(expressSession);

module.exports = function (config) {
  config = config || {};
  config.secret = config.secret || 'some secret that you should probably change';
  config.key = config.key || 'sid';
  config.store = new RedisStore();
  var fn = function (bus) {
    bus.io().use(fn.middleware);
  };
  fn.middleware = handshake(config);
  return fn;
};
