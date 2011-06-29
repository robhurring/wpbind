$:.push File.expand_path("../../lib", __FILE__)
require 'bundler'
Bundler.setup

require 'wordpress'
require 'logger'
require 'pp'

require 'active_record'
require 'active_support'

module Rails
  def self.env
    :development
  end
end

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.configurations = {
  'wordpress_development' => {
    :adapter => 'mysql',
    :host => 'localhost',
    :username => 'root',
    :password => '',
    :database => 'wordpress'
  }
}

Wordpress.prefix = 'ezpress_'

r = Wordpress::Term.first

data = r.taxonomy

puts data.to_yaml
