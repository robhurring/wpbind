module Wordpress
  class Term < Model
    set_wordpress_table 'terms'
    set_primary_key 'term_id'
    
    has_one :taxonomy, :class_name => 'Wordpress::Taxonomy', :foreign_key => :term_id
  end
end