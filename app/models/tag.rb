class Tag < ApplicationRecord
  
  validates :title, presence: true

  has_many :join_table_tag_gossips
  has_many :gossips, through: :join_table_tag_gossips
end
