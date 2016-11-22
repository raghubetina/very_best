class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :counter_cache => true

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :bookmarks,
             :source => :user

  # Validations

  validates :name, :uniqueness => { :scope => [:neighborhood_id], :message => "already exists" }

  validates :name, :presence => true

end
