class Contact < ApplicationRecord


  has_attached_file :avatar, styles: { medium: "380x500#", thumb: "100x100>" }, default_url: "/images/medium/missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true
  validates :city, presence: true, length: {maximum: 20}

  belongs_to :user

  # Scopes

end
