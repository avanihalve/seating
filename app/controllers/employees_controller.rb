class EmployeesController < ApplicationController
	#before_action :authenticate_user!
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
		@seat = Seat.find(@employee.seat_id)
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_param)

		if @employee.save
			EmployeeMailer.with(employee: @employee).welcome_email.deliver_now
			
			redirect_to @employee
			flash[:notice] = "Employee Created successfully!" 
		else
			render :new
			flash[:notice] = "Seat is already reserved"
		end
	end

	def edit

		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_param)
			redirect_to @employee
			flash[:notice] = "Employee Updated successfully!" 

		else

			render :edit  
		end
	end

	def search
		@employee = params[:query]
		@employees = Employee.where("employees.office_id like ?", ["%#{@employee}%"])
		render :index
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy

		redirect_to root_path
		flash[:notice] = "Employee Deleted successfully!" 
	end

	def send_mail

		@employee = current_user
		#@data = params[:text1]
		ApplyseatMailer.with(employee: @employee).send_apply_mail.deliver_now 

	    #render :text => "Email send"
	    flash[:notice] = "Mail sent to successfully!" 
	end

	# def there
	# @
	# end

	private

	def employee_param
		params.require(:employee).permit(:fname, :lname, :office_id, :contact, :avatar,  :seat_id, :search, :email, :text1)
	end
end
