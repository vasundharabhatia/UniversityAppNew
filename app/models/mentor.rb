class Mentor < ActiveRecord::Base
  attr_accessor :reject_mentor
	has_many :students
	validates_presence_of :Name
	validates_numericality_of :Age
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end