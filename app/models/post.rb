class Post < ActiveRecord::Base
  validates :content, presence: true, length: {maximum:142}

  belongs_to :user
end
