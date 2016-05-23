class EvaluateLab < ActiveRecord::Base
  belongs_to :lab
  has_one :engineer, foreign_key: 'membersh_number'
end
