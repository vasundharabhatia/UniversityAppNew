class Student < ActiveRecord::Base
	belongs_to :mentor
	
    has_and_belongs_to_many :colleges

    validates_presence_of :Name,:Score,:School
	validates_numericality_of :Age,:Score
	accepts_nested_attributes_for :mentor, :reject_if => lambda { |a| a[:reject_mentor] == '1' }
end