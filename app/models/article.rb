class Article < ActiveRecord::Base

	# Relationships 
	belongs_to :category

	#Validations 
	validates_presence_of :title
	validates_presence_of :content

	# Scopes
	scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
