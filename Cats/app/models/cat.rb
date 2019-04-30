# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  description :text             not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    VALID_COLORS = %w(black grey white orange brown)
    VALID_SEX = %w(M F)

    validates :birth_date, :color, :name, :description, :sex, presence: true
    validates :color, inclusion: { in: VALID_COLORS, message: "%{value} is not a valid color" }
    validates :sex, inclusion: { in: VALID_SEX, message: "%{value} is not a valid sex" }

    has_many :rental_requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy


    def age
        distance_of_time_in_words(birth_date, Time.now)                                               
    end

    def colors
        VALID_COLORS
    end
end
