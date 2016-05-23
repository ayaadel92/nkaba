class EvaluateDoctor < ActiveRecord::Base
  belongs_to :doctor
  has_one :engineer, foreign_key: 'membersh_number'
end
