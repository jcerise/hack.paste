class Snippet < ActiveRecord::Base
	belongs_to :user

	validates :title, :description, :language, :code, :presence => true
end
