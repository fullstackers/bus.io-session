describe 'Session', ->
    
  Given -> @Session = requireSubject 'lib/session', {}
  Given -> @bus = require('bus.io')()

  describe '#', ->

    Given -> spyOn(@bus.io(),['use'])
    Given -> @session = @Session()
    When -> @bus.use @session
    Then -> expect(@bus.io().use).toHaveBeenCalledWith @session.middleware

