def fib(n)
  # Add functionality here
  if n == 0 || n == 1
  	return n
  elsif n > 1 && n < 10
   	return fib(n-1) + fib(n-2)
  else
   	return "invalid number"
  end
end