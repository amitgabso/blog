class Car < ApplicationRecord

  # relate car to user
  belongs_to :user

  # holding an image
  has_attached_file :image, styles: { large: "300x300>", small: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
