class DonesController < ApplicationController
    def index
        if user_signed_in?
        @dones = current_user.dones
        else 
        redirect_to user_session_path
        end
    end
    
    def create
        @tarea = Tarea.find(params[:tarea_id])
        @done = Done.new(tarea: @tarea, user: current_user)
        if @done.save
            redirect_to tareas_path, notice: 'Esta tarea ha sido completada'
        else
            redirect_to tareas_path, alert: 'Esta tarea no ha sido completada'
        end
    end

    def update
        @done = Done.find(params[:id])
        if @done.complete == false
            @done.update_attributes(complete: true)
        else
            @done.update_attributes(complete: false)
        end    
            @done.save
            redirect_to dones_path
    end
end
