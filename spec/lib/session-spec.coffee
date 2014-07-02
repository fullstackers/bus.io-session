describe 'Session', ->
    
  Given -> @Session = requireSubject 'lib/session', {
    'express-session': require('express-session')
    'connect-redis': require('connect-redis')
  }
  Given -> @bus = require('bus.io')()

  describe '#', ->

    Given -> spyOn(@bus.io(),['use'])
    Given -> @session = @Session()
    When -> @bus.use @session
    Then -> expect(@bus.io().use).toHaveBeenCalledWith @session.middleware

