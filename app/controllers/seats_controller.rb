class SeatsController < ApplicationController

	def index
		@seats = Seat.all
	end

	def show
		@seat = Seat.find(params[:id])
	end

	def new
		@seat = Seat.new
	end

	def create
		@seat = Seat.new(seat_param)

		if @seat.save
			redirect_to @seat
		else
			render :new
		end
	end

	def update
		@seat = Employee.find(params[:id])
		if @seat.update(seat_param)
			redirect_to @seat
			flash[:notice] = "seat Updated successfully!" 

		else

			render :edit  
		end
	end

	def destroy
		@seat = Seat.find(params[:id])
		@seat.destroy

		redirect_to root_path
		flash[:notice] = "Seat Deleted successfully!" 
	end

	private

	def seat_param
		params.require(:seat).permit(:seat_no)
	end
end
