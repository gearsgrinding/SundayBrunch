class Song < ActiveRecord::Base
		belongs_to :user
   validates :user_id, presence: true
   validates :song, presence: true, length: { maximum: 140 }
end
