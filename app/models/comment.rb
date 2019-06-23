class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  RATINGS = {
    'one star': '1_star',
    'two stars': '2_stars',
    'three stars': '3_stars',
    'four stars': 'four_stars',
    'five stars': 'five_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

end
