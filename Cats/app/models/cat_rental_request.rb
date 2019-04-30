# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord

    VALID_STATUS = %w(PENDNG APPROVED DENIED)
    validates :status inclusion: { in: VALID_STATUS, message: "%{value} is not a valid status" }
    validates :start_date, :end_date, :cat_id, :status, presence: true

    belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

    def overlapping_requests
        requests = self.cat.cat_rental_requests
    end


end
