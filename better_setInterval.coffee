# Usage:
#   every 250, (stop) ->
#     stop() if condition
#     # some logic...
# 
# Still preserves original behavior if you want to do that:
#   interval_id = every 250, someFunction
#   clearInterval(interval_id)

every = (time, fn) ->
  stop   = -> clearInterval(interval_id)
  helper = -> fn(stop)
  interval_id = setInterval(helper, time)