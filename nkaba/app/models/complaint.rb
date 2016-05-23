class Complaint < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :lab
  belongs_to :doctor
  has_one :engineer, foreign_key: 'membersh_number'
end
