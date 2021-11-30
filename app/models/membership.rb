class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client_id, uniqueness: { scope :gym_id, message: "client has a membership already at this gym" }
end
