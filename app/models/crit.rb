class Crit < ActiveRecord::Base
  belongs_to :project
  has_many :crit_notes
  has_many :crit_requirements
end
