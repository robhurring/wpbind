module Wordpress
  class CommentMeta < Meta
    set_wordpress_table 'commentmeta'
    set_primary_key 'meta_id'

    belongs_to :comment, :class_name => 'Wordpress::Comment', :foreign_key => :comment_id
  end
end