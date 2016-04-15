class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, :through => :appointments

  validates :name, presence: true
end
