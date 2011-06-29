module Wordpress
  class Meta < Model
    self.abstract_class = true
    self_delegate :key, :value, :prefix => 'meta'
  end
end