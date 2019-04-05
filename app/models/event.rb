class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validate :start_date_cannot_be_in_the_past
  validate :cannot_be_same_date

  def start_date_cannot_be_in_the_past

    if start_date < Date.today
      errors.add(:start_date, "can't be in the past")
	end
    end

  validate :cannot_be_same_date

  def cannot_be_same_date

	errors.add(:base, "cannot be same date and same venue") if
	Event.find_by(event_venue.id:event_venue, start_date:start_date).present?
  end
 end
