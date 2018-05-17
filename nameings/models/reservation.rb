class Reservation < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true

  enum status: [ :pending, :confirmed, :rejected ]

  belongs_to :vacation_property
  belongs_to :user

  def notify_host(force = true)
    @host = User.find(self.vacation_property[:user_id])

    # Don't send the message if we have more than one or we aren't being forced
    if @host.pending_reservations.length > 1 or !force
      return
    else
      message = "You have a new reservation request from #{self.name} for #{self.vacation_property.description}:

      '#{self.message}'

      Reply [accept] or [reject]."

      @host.send_message_via_sms(message)
    end
  end

  def confirm!
    self.status = "confirmed"
    self.save!
  end

  def reject!
    self.status = "rejected"
    self.save!
  end

  def notify_guest
    @guest = User.find_by(phone_number: self.phone_number)

    if self.status_changed? && (self.status == "confirmed" || self.status == "rejected")
      message = "Your recent request to stay at #{self.vacation_property.description} was #{self.status}."
      @guest.send_message_via_sms(message)
    end
  end
end
