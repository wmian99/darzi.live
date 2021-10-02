class Customer < ApplicationRecord
  has_many :orders
  has_one_attached :image
  validates :fname, :email, :phone , presence: true
  validate :password_matches

  private
  def password_matches
  	if password != confirm_password
  		errors.add :password, :not_match, message: "Doesn't matches... Please ensure to match Password and Confirm password fields"
  	end
  end
end
