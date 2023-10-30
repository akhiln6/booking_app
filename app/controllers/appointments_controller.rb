class AppointmentsController < ApplicationController

  def create 
    @physician = Physician.find(params[:id])
    @appointment = @physician.appointments.create(user_id: current_user.id, appointment_date: DateTime.now)

    redirect_to root_path
  end 
  def showing
  
    @physician = Physician.find(params[:id])
    @appointments = @physician.appointments
    # @appointments = Appointment.all
   


  end
     



end
