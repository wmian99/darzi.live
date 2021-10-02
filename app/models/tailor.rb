class Tailor < ApplicationRecord
	has_many :orders
	has_one_attached :image
	has_one_attached :shop_images
	has_one_attached :cnic_images
	validates :name,:phone,:email,:shop_name,:address, presence: true
	validate :password_matches

  	private
  	def password_matches
  	  if password != confirm_password
  		errors.add :confirm_password, :not_match, message: "Doesn't matches... Please ensure to match Password and Confirm password fields"
  	  end
  	end
end
