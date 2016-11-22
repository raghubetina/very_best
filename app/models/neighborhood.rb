class Neighborhood < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:state, :city], :message => "already exists" }

  validates :name, :presence => true

  validates :state, :presence => true

end
