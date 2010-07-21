class Post < ActiveRecord::Base
	validates :body, 	:presence => true
	validates :title,	:presence => true,
						:length => { :minimum => 5 } 
	
	has_many :blog_comments, :dependent => :destroy
	has_many :blog_tags
	
	accepts_nested_attributes_for :blog_tags, :allow_destroy => :true, 
					:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
