IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
  warn "Please gem install wirble"
end
