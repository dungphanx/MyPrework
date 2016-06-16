class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: {minimum: 5 }

	def self.search(search)
  		#search_condition = "%" + search + "%"
  		where("title LIKE ? OR body LIKE ?", "%#{search}%", "%#{search}%")
	end
end
