wrong = ->
  countdown = 10
  h = setInterval ->
          countdown--
  , 100
  do (->) until countdown is 0
  clearInterval h
  console.log 'Surprise!'

right = ->
  countdown = 10
  h = setInterval ->
    countdown--
    if countdown is 0
      console.log 'Surprise'
      clearInterval h
  , 100

right()