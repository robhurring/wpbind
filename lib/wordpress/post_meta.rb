module Wordpress
  class PostMeta < Meta
    set_wordpress_table 'postmeta'
    set_primary_key 'meta_id'

    belongs_to :post, :class_name => 'Wordpress::Post', :foreign_key => :post_id
  end
end