class Snippet < ActiveRecord::Base

	self.per_page = 5

	belongs_to :user
	validates :title, :description, :language, :code, :presence => true
end
