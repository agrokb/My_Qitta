class Story < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  def normalize_friendly_id(input)
    input.to_s.to_ascii.to_slug.normalize(transliterations: :russian).to_s
  end
  private
  def slug_candidate
    [
      :title,
      [:title,SecureRandom.hex[0,8]]
    ]
  end

end
