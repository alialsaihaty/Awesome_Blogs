class Tag < ActiveRecord::Base

  validates :name, uniqueness: true,
                   presence: true
  has_many :taggings, dependent: :destroy
  has_many :blogs, through: :taggings
  
end
