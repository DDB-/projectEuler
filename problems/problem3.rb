class Stack
  def initialize
   @the_stack = []
  end
  def push(item)
    @the_stack.push item
  end
  def pop
    @the_stack.pop
  end
  def count
    @the_stack.length
  end
end

def is_prime(num)
  i = 2
  while i < Math.sqrt(num) + 1
    if num%i == 0
      return false
    end
    i += 1
  end
  return true
end
i = 3
count = 0
stack = Stack.new
while i < 300425738
  if 600851475143%i == 0
    stack.push(i)
    count += 1
    puts i
  end
   i += 2
  if 600851475143%i == 0
    stack.push(i) 
    count += 1
    puts i
  end
   i += 4
end
while count > 0
  x = stack.pop
  if is_prime(x)
    print x 
    break
  end
  count -= 1
end
	
