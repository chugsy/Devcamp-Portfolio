class Blog < ApplicationRecord
    enum status: { draft: 0, pusblished: 1 }
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    validates_presence_of :title, :body
    
    
end
