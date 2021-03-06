module Spree::ProductVideo::Product

  def self.included(target)
    target.class_eval do
      has_many :videos, :as => :viewable, :order => :position, :dependent => :destroy
    end
  end
  
end
