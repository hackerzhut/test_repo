# Test Count down
countdown = 10
h = setInterval ->
 countdown--
, 100
do (->) until countdown is 0
clearInterval h
console.log 'Surprise!!!!'

sayHello = () ->
  "Hello World"

sayNo = () ->
  "NOOOOOOOOOOOOOOOOO"
