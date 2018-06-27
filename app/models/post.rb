class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, includsion: in:%w(Fiction Non-Fiction)


  TITLE_MATCH_ARRAY = [/Won't Believe/, /Secret/, /Top [0..99]/, /guess/]
end
