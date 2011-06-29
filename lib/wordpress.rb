module Wordpress
  class << self
    attr_accessor :prefix
  end

  self.prefix = 'wp_'
  
  autoload :Model, 'wordpress/model'
  autoload :User, 'wordpress/user'
  autoload :Post, 'wordpress/post'
  autoload :Comment, 'wordpress/comment'
  autoload :Meta, 'wordpress/meta'
  autoload :CommentMeta, 'wordpress/comment_meta'
  autoload :PostMeta, 'wordpress/post_meta'
  autoload :UserMeta, 'wordpress/user_meta'
  autoload :Option, 'wordpress/option'
  autoload :Link, 'wordpress/link'
  autoload :Term, 'wordpress/term'
  autoload :TermRelationship, 'wordpress/term_relationship'
  autoload :Taxonomy, 'wordpress/taxonomy'
end
