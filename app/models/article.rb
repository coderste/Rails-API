class Article < ApplicationRecord
  before_create :create_slug

  # Create the slug
  def create_slug
    self.slug = self.title.parameterize
  end
end
