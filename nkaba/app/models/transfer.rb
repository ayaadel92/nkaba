class Transfer < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :hospital
  belongs_to :lab
  belongs_to :type
  has_one :engineer, foreign_key: 'membersh_number'
end
