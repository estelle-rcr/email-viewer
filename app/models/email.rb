class Email < ApplicationRecord
  validates :object, presence: true
  validates :body, presence: true
  validates :read, :presence => true
end
