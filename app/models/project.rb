class Project < ActiveRecord::Base
  belongs_to :user
  has_many :briefs
  has_many :tasks, :dependent => :destroy
  has_one :crit
  
  validates :name, :deadline, :presence => true
  

end
