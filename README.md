[![Build Status](https://travis-ci.org/turbonetix/bus.io-session.svg?branch=master)](https://travis-ci.org/turbonetix/bus.io-session)
[![NPM version](https://badge.fury.io/js/bus.io-session.svg)](http://badge.fury.io/js/bus.io-session)
[![David DM](https://david-dm.org/turbonetix/bus.io-session.png)](https://david-dm.org/turbonetix/bus.io-session.png)

![Bus.IO](https://raw.github.com/turbonetix/bus.io/master/logo.png)

Session middleware for bus.io that uses [express-session](https://www.npmjs.org/package/express-session "express session").

```javascript

var bus = require('bus.io')();
var session = require('bus.io-session');
bus.use(session());

```

The underlying component is [socket.io-handshake](https://www.npmjs.org/packages/socket.io-handshake "socket.io-handshake").  
Which means this middleware component accepts the same configuration options.  Here is a complete
example.

```javascript

var expressSession = require('express-session');
var RedisStore = require('connect-redis')(expressSession);
var sessionStore = new RedisStore();
var cookieParser = require('cookie-parser');
var session = require('bus.io-session');

var bus = require('bus.io')(3000);
bus.use(session({store: sessionStore, key:'sid', secret:'secret', parser:cookieParser()}));

```

# Installation and Environment Setup

Install node.js (See download and install instructions here: http://nodejs.org/).

Clone this repository

    > git clone git@github.com:turbonetix/bus.io-session.git

cd into the directory and install the dependencies

    > cd bus.io-session
    > npm install && npm shrinkwrap --dev

# Running Tests

Install coffee-script

    > npm install coffee-script -g

Tests are run using grunt.  You must first globally install the grunt-cli with npm.

    > sudo npm install -g grunt-cli

## Unit Tests

To run the tests, just run grunt

    > grunt spec

## TODO
