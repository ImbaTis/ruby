# Build a classical stack class
class Stack
  attr_reader :elements
  def initialize
    @elements = []
  end

  def push(element)
    @elements << element
  end

  def pop
    @elements.delete_at(-1)
  end
end

new_stack = Stack.new
p new_stack.elements
new_stack.push('tomato')
new_stack.push('potato')
new_stack.push('spinach')
new_stack.push('cucumber')
p new_stack.elements
new_stack.pop
p new_stack.elements
