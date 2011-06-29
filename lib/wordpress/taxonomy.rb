module Wordpress
  class Taxonomy < Model
    set_wordpress_table 'term_taxonomy'
    set_primary_key 'term_taxonomy_id'
    
    belongs_to :term, :class_name => 'Wordpress::Term', :foreign_key => :term_id
    
  end
end