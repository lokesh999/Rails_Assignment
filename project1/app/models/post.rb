class Post < ApplicationRecord
  belongs_to :user
  scope :popular, -> { where ("comment >97")}
  #scope :old, -> { where ('created_at <  ?',2.years.ago) }

end

