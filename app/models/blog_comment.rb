class BlogComment < ActiveRecord::Base
  belongs_to :post
end
