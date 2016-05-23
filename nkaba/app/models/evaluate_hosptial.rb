class EvaluateHosptial < ActiveRecord::Base
  belongs_to :hospital
   has_one :engineer, foreign_key: 'membersh_number'
end
