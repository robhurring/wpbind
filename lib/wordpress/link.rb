module Wordpress
  class Link < Model
    set_wordpress_table 'links'
    set_primary_key 'link_id'
    self_delegate :url, :name, :image, :target, :description, :visible, :rating, 
      :updated, :rel, :notes, :rss, :prefix => 'link'
      
    def visible?
      read_attribute(:link_visible) == 'Y'
    end
  end
end