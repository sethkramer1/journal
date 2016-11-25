class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  EMOJI_OPTIONS = [[true,'💩'], [true,'😊'],[true,'😡'],[true,'😏'],[true,'🙃'] ]

end
