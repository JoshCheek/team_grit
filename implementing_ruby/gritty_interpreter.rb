class GrittyObject
end

class GrittyBinding
  attr_accessor :local_variables, :slf, :return_value
  def initialize(local_variables, slf, return_value)
    self.local_variables = local_variables
    self.slf             = slf
    self.return_value    = return_value
  end
end

class GrittyInterpreter
  attr_reader :stack, :methods

  def initialize(ast)
    main     = GrittyObject.new
    @ast     = ast
    @stack   = [GrittyBinding.new({}, main, nil)]
    @methods = {}
  end

  def call
    evaluate @ast
  end

  def evaluate(ast)
    case ast.type
    when :begin
      ast.children.each do |child|
        stack.last.return_value = evaluate(child)
      end
    when :def
      method_name          = ast.children[0]
      body                 = ast.children[-1]
      methods[method_name] = body
      method_name
    when :send
      method_name = ast.children[1]
      target      = ast.children[0] || current_self
      method      = find_method(target, method_name)
      linenum     = ast.loc.expression.line
      stack << GrittyBinding.new({}, target, nil)

      puts "Calling #{method_name} (line #{linenum}) on #{target.inspect}"
      return_value = evaluate(method)
      puts "#{method_name} returned #{return_value.inspect}"

      stack.pop
      return_value
    when :self
      current_self
    else
      raise "Unexpected ast! #{ast.inspect}"
    end
  end

  def find_method(object, method_name)
    methods.fetch method_name
  end

  def current_self
    stack.last.slf
  end
end

# read in the Ruby code
input_filename = ARGV[0]
raw_ruby       = File.read(input_filename)

# parse it
require 'parser/current'
ast = Parser::CurrentRuby.parse(raw_ruby)

# interpret it
GrittyInterpreter.new(ast).call
