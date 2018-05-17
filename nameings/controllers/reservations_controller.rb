class ReservationsController < ApplicationController

  # GET /vacation_properties/new
  def new
    @reservation = Reservation.new
  end

  def create
    @vacation_property = VacationProperty.find(params[:reservation][:property_id])
    @reservation = @vacation_property.reservations.create(reservation_params)

    if @reservation.save
      flash[:notice] = "Sending your reservation request now."
      @reservation.notify_host
      redirect_to @vacation_property
    else
      flast[:danger] = @reservation.errors
    end
  end

  # webhook for twilio incoming message from host
  def accept_or_reject
    incoming = Sanitize.clean(params[:From]).gsub(/^\+\d/, '')
    sms_input = params[:Body].downcase
    begin
      @host = User.find_by(phone_number: incoming)
      @reservation = @host.pending_reservation

      if sms_input == "accept" || sms_input == "yes"
        @reservation.confirm!
      else
        @reservation.reject!
      end

      @host.check_for_reservations_pending

      sms_reponse = "You have successfully #{@reservation.status} the reservation."
      respond(sms_reponse)
    rescue
      sms_reponse = "Sorry, it looks like you don't have any reservations to respond to."
      respond(sms_reponse)
    end
  end

  private
    # Send an SMS back to the Subscriber
    def respond(message)
      response = Twilio::TwiML::Response.new do |r|
        r.Message message
      end
      render text: response.text
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:name, :phone_number, :message)
    end
end
