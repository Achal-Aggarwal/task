class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
 	student = Student.where(id: @user.studentId).limit(1)
    @user.destroy
    @repos.destroy_all
    respond_to do |format|
      format.html { redirect_to student, notice: 'User & his repos was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      @repos = Repo.where(user_id: @user.id)
    end
end
