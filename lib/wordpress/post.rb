module Wordpress
  class Post < Model
    set_primary_key 'ID'
    set_wordpress_table 'posts'
    self_delegate :date, :date_gmt, :content, :title, :exxcerpt, :status, :password, :name, 
      :modified, :modified_gmt, :content_filter, :type, :mime_type, :prefix => 'post'
      
    belongs_to :user, :class_name => 'Wordpress::User'
    has_one :parent, :class_name => 'Wordpress::Post', :foreign_key => :ID, :primary_key => :post_parent
    has_many :children, :class_name => 'Wordpress::Post', :foreign_key => :post_parent, :primary_key => :ID
    has_many :metas, :class_name => 'Wordpress::PostMeta', :foreign_key => :post_id
  end
end