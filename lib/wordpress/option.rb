module Wordpress
  class Option < Model
    set_wordpress_table 'options'
    set_primary_key 'option_id'
    self_delegate :name, :value, :prefix => 'option'
    
    def autoload?
      read_attribute(:autoload) == 'yes'
    end
  end
end