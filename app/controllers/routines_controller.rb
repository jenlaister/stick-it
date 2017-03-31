class RoutinesController < ApplicationController

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.save
    redirect_to @routine
  end

  def show
    find_routine
    current_user
  end

  def index
    @routines = Routine.all
    current_user
  end

  def edit
    find_routine
  end

  def update
    find_routine
    current_user
    if @routine.update(notes: params[:routine][:notes])
      if !params[:routine][:notes].empty?
          @note = Note.find_or_create_by(notes: params[:routine][:notes])
          @routine.notes << @note
        end
        redirect_to routine_path(@routine)
      end
  end

#   "commit"=>"Submit", "id"=>"2"}
#  Routine Load (0.2ms)  SELECT  "routines".* FROM "routines" WHERE "routines"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
#  User Load (0.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
# No template found for RoutinesController#update, rendering head :no_content




  def destroy
    find_routine
    @routine = Routine.destroy
    redirect_to @routine
  end


  private

  def routine_params
    params.require(:routine).permit(:id, :streak, notes: [:routine][:notes])
  end

  def find_routine
    @routine = Routine.find(params[:id])
  end


end
