#!/usr/bin/ruby

#IRB.conf[:SAVE_HISTORY] = 1000
#IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

#IRB.conf[:PROMPT_MODE] = :SIMPLE

#%w[rubygems looksee/shortcuts wirble].each do |gem|
  #begin
    #require gem
  #rescue LoadError
  #end
#end

#class Object
   #list methods which aren't in superclass
  #def local_methods(obj = self)
    #(obj.methods - obj.class.superclass.instance_methods).sort
  #end

   #print documentation
  
     #ri 'Array#pop'
     #Array.ri
     #Array.ri :pop
     #arr.ri :pop
  #def ri(method = nil)
    #unless method && method =~ /^[A-Z]/  if class isn't specified
      #klass = self.kind_of?(Class) ? name : self.class.name
      #method = [klass, method].compact.join('#')
    #end
    #system 'ri', method.to_s
  #end
#end

#def copy(str)
  #IO.popen('pbcopy', 'w') { |f| f << str.to_s }
#end

#def copy_history
  #history = Readline::HISTORY.entries
  #index = history.rindex("exit") || -1
  #content = history[(index+1)..-2].join("\n")
  #puts content
  #copy content
#end

#def paste
  #`pbpaste`
#end

#def change_log(stream)
  #if defined?(ActiveRecord::Base)
    #ActiveRecord::Base.logger = Logger.new(stream)
    #ActiveRecord::Base.clear_active_connections!
  #end
#end

#def show_log
  #change_log(STDOUT)
#end

#def hide_log
  #change_log(nil)
#end

#load File.dirname(__FILE__) + '/.railsrc' if ($0 == 'irb' && ENV['RAILS_ENV']) || ($0 == 'script/rails' && Rails.env)
