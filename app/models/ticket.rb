class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :order
  before_create :cannot_after_start
  before_create :cannot_after_start1

	def cannot_after_start
	  if self.start_day < Date.today
	end
    
   end

	def cannot_after_start1
	  if self.start_day < Date.today
	end

    end
end
