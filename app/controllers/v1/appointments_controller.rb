class V1::AppointmentsController < ApplicationController
    def index 
        @appointments = Appointments.all
        render json: @appointments, status: :ok
    end

    def create 
        @appointment = Appointment.new(contact_params)

        @appointment.save
        render json: @appointment, status: :created
    end

    def destroy 
        @appointment = Appointment.where(id: params[:id]).first
        if @appointment.destroy
            head(:ok)
        else
            head(:unprocessable_entity)
        end

    end

    def update 

    end

    def contact_params
        params.require(:appointment).permit(:status, :session_type, :start_time, :end_time, :appt_with_id, :account_id)

    end
end
