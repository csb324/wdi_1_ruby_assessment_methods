#### Question 1

def square(x)
  x * x
end

y = square(2)
# What is the value of 'x' after this line executes?

# well, x isn't actually a variable. Its value may still be floating around
# somewhere, but if we asked ruby for the value of x, it would give an error
# because we're asking for an undefined variable

#### Question 2
# What is the value of `age` after we call `get_older`?

def get_older(age)
  age = age + 1
end

age = 10
get_older(age)

# if we ask for age, age is still 10
# the value of get_older(age) is 11

#### Question 3
# What is the return value of `jump` when called on the last line here?

def how_high
  energy * energy
end

def jump
  height = how_high()
  height - 2
end

energy = 2
jump

# Energy should be an argument or a constant. The method "how_high" won't work '
# at all. Because the jump method depends on the how_high method, this whole
# thing will return an error!

# Hypothetically, if we put "ENERGY = 2" before we defined the methods and
# rewrote the how_high method to refer to the ENERGY constant, then the jump
# method would return a value of 2 --- e.g.

ENERGY = 2

def how_high
  ENERGY * ENERGY
end
def jump
  height = how_high()
  height - 2
end

jump

# we could also do it by passing energy as an argument to how_high -- e.g.

def how_high(energy)
  energy * energy
end
def jump(energy)
  height = how_high(energy)
  height - 2
end

energy = 2
jump(energy)

# that would work!

#### Question 4
# Write a method that accepts a string and an optional multiplier (defaults to 3)
# and returns the original string multiplied that many times (using the * operator).
# Do not use an options hash or keyword arguments.

def multiplied_string(some_string, times = 3)
  some_string * times
end

#### Question 5
# Write code using this method to create the string "HELLO THERE, PUNY HUMANS"

def greeting(name:, salutation: 'Hi', volume: :low)
  greeting = "#{salutation} there, #{name}"
  volume == :high ? greeting.upcase : greeting
end

greeting(name: "puny humans", salutation: "hello", volume: :high)
