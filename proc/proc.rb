square = Proc.new {|x| x**2 }

puts "square.call(3): " + square.call(3).to_s  #=> 9
# shorthands:
puts "square.(3): " + square.(3).to_s      #=> 9
puts "square[3]: " + square[3].to_s       #=> 9

### 

def gen_times(factor)
  Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end

times3 = gen_times(3)
times5 = gen_times(5)

puts times3.inspect
puts times5.inspect

puts "times3: " + times3.call(12).to_s               #=> 36
puts "times5: " + times5.call(5).to_s                #=> 25
puts "times3: " + times3.call(times5.call(4)).to_s   #=> 60

###

# Use the Proc class constructor:

proc1 = Proc.new {|x| x**2 }
# Use the Kernel#proc method as a shorthand of ::new:
proc2 = proc {|x| x**2 }
# Receiving a block of code into proc argument (note the &):

def make_proc(&block)
  block
end
proc3 = make_proc {|x| x**2 }

# Construct a proc with lambda semantics using the Kernel#lambda method (see below for explanations about lambdas):
lambda1 = lambda {|x| x**2 }
# Use the Lambda literal syntax (also constructs a proc with lambda semantics):
lambda2 = ->(x) { x**2 }

puts proc1.inspect
puts "proc1: " + proc1.call(2).to_s
puts "proc2: " + proc2.call(2).to_s
puts "proc3: " + proc3.call(2).to_s

puts lambda1.inspect
puts "lambda1: " + lambda1.call(2).to_s
puts "lambda2: " + lambda2.call(2).to_s
