class Relative < ActiveRecord::Base
  belongs_to :limit
  has_one :engineer, foreign_key: 'membersh_number'
end
