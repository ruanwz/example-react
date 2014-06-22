isChrome = /Chrome/.test(navigator.userAgent) &&
 /Google Inc/.test(navigator.vendor)
 #unless isChrome
 #  alert 'you need to use Chrome browser to enable the
 # funtionalities on this site'

Main = require('./main.coffee')
Main.start()

