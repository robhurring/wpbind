module Wordpress
  class UserMeta < Meta
    set_wordpress_table 'usermeta'
    set_primary_key 'umeta_id'

    belongs_to :user, :class_name => 'Wordpress::User', :foreign_key => :user_id
  end
end