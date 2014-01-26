class Snippet < ActiveRecord::Base

	self.per_page = 10

	belongs_to :user
	validates :title, :description, :language, :code, :presence => true
end
