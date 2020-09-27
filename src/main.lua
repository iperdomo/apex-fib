-- Attribution: https://gist.github.com/SegFaultAX/2772595

Fibonacci = {}

-- Tail-optimized recursive
function Fibonacci.tail_call(n)
    local function inner(m, a, b)
      if m == 0 then
        return a
      end
      return inner(m-1, b, a+b)
    end
    return inner(n, 0, 1)
  end
