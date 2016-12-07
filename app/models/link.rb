class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments
  EMOJI_OPTIONS = [['💩','💩'], ['😊','😊'],['😡','😡'],['😏','😏'],['🙃','🙃'] ]

def self.search(search)
  query = "%#{search}%"
   if search
     self.where("title like ? or description like ?", query, query)
   else
     self.all
   end


end

end
