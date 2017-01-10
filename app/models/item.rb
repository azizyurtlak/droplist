class Item < ApplicationRecord
  belongs_to :list

  def self.upcomings
    where('to_timestamp(reminder_time + ?) > due_time AND is_done=false', Time.now.to_i)
  end
end
