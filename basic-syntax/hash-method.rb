# In a function call with unknown number of keyword arguments, use {} for the last argument
def tag(name, content, attrs = {})
  flat_attrs = attrs.map { |key, val| " #{key}='#{val}'" }.join
  return "<#{name}#{flat_attrs}>#{content}</#{name}>"
end

tag("h1", "Hello world")
# => <h1>Hello world</h1>

tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
