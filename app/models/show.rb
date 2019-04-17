class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular
    self.maximum(:rating)
  end

  def self.highest_rating
    self.minimum(:rating)
  end

  def self.least_popular
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:ratings)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
  end
end
