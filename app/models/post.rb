class Post < ApplicationRecord
  belongs_to :admin_user

  def self.ransackable_attributes(auth_object = nil)
    ["title", "body", "image", "published", "created_at", "admin_user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["admin_user"]
  end
end
