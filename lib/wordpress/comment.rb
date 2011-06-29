module Wordpress
  class Comment < Model
    set_wordpress_table 'comments'
    set_primary_key 'comment_ID'
    self_delegate :author, :author_email, :author_url, :author_ip, :date, :date_gmt, :content, 
      :karma, :approved, :agent, :type, :prefix => :comment
    
    belongs_to :user, :class_name => 'Wordpress::User', :foreign_key => :user_id
    belongs_to :post, :class_name => 'Wordpress::Post', :foreign_key => :comment_post_ID
    has_one :parent, :class_name => 'Wordpress::Comment', :foreign_key => :comment_ID, :primary_key => :comment_parent
    has_many :children, :class_name => 'Wordpress::Comment', :foreign_key => :comment_parent, :primary_key => :comment_ID
    has_many :metas, :class_name => 'Wordpress::CommentMeta', :foreign_key => :comment_id
  end
end