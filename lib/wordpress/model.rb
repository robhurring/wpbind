module Wordpress
  class Model < ActiveRecord::Base
    self.abstract_class = true
    establish_connection "wordpress_#{Rails.env}"
    
    def self.readonly?
      true
    end
    
    def self.set_wordpress_table(name = nil)
       set_table_name "#{Wordpress.prefix}#{name}"
    end
    
    def self.self_delegate(*args)
      options = args.extract_options!
      prefix = options[:prefix] || ''
      args.each do |attribute|
        old_method = "#{prefix}_#{attribute}"
        define_method(attribute){ __send__(old_method)}
      end
    end
  end
end