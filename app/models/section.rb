class Section < ApplicationRecord
  belongs_to :training
  has_many :questions, inverse_of: :section
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
  has_many :users, through: :section_user

# this method is to convert the url given by the user to an embeded url
  def embedded_video_url
    self.video_url.sub 'watch?v=', 'embed/'
  end
end
