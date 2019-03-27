class Tareas_usersController < ApplicationController

private
def add_task
   @user = User.new
   @user << tareas.all
end