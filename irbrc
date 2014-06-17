IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
  warn "Please gem install wirble"
end

class Method
  def edit
    loc = source_location
    `mate #{loc.first} -l #{loc.last}`
  end

  def super
    klass = receiver.singleton_class rescue receiver.class
    ancestor = klass.ancestors
      .drop_while { |ancestor| ancestor != owner }
      .drop(1)
      .find { |ancestor| ancestor.method_defined?(name) }
    if ancestor
      ancestor.instance_method(name).bind(receiver)
    else
      puts "No super method `#{name}' for `#{inspect}'"
    end
  rescue NameError
    puts "No super method `#{name}' for `#{inspect}'"
  end

end
