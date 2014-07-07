class Project < ActiveRecord::Base
	def self.search(search)
		if search
			 where("name like ?", "%#{search}%") 
		else
			all
		end
	end
end
