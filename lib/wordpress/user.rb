module Wordpress
  class User < Model
    set_primary_key 'ID'
    set_wordpress_table 'users'

    self_delegate :login, :pass, :nicename, :email, :url, :registered, :activation_key, :status, :prefix => 'user'
    has_many :posts, :class_name => 'Wordpress::Post', :foreign_key => :post_author
    has_many :metas, :class_name => 'Wordpress::UserMeta', :foreign_key => :user_id
  end
end