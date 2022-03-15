class SeatsController < ApplicationController

	def create
		@seat = Seat.new(seat_param)

		if @seat.save
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def seat_param
		params.require(:seat).permit(:seat_no)
	end
end
