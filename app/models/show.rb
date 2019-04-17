class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", highest_rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", lowest_rating)
  end

  def self.ratings_sum
    self.sum(:ratings)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    self.all.order(:name)
  end
end
