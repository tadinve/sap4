class Pivot < ActiveRecord::Base
   attr_accessible :content
   belongs_to :user
   validates :user_id, presence: true

   validates :content, presence: true, length: { maximum: 500 }

   default_scope order: 'pivots.created_at DESC'

end
