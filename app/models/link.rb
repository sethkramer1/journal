class Link < ActiveRecord::Base
  acts_as_votable
  has_streak
  belongs_to :user
  has_many :comments
  EMOJI_OPTIONS = [['💩','💩'], ['😊','😊'],['😡','😡'],['😏','😏'],['🙃','🙃'] ]

def self.search(search)
  query = "%#{search}%"
   if search
     self.where("title LIKE :search or description LIKE :search", search: "%#{search}%")
   else
     self.all
   end
end





end
