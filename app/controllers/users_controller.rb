class UsersController < ApplicationController 
	  before_action :set_user, only: [:show, :edit, :update, :destroy]

 
 	def index
 	
 	@users = User.paginate(page: params[:page], per_page: 4)

 	end


 	def show

 		@user = User.find(params[:id])

 	end


 	def new
 		
 	 @user = User.new

 	end


 	def edit
    
    end


 	def create
    	@user = User.new(user_params)
	    respond_to do |format|
	      if @user.save
		        format.html { redirect_to @user, notice: 'User was successfully created.' }
		        format.json { render :show, status: :created, location: @user }
	      else
		        format.html { render :new }
		        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
  end

    def update
		respond_to do |format|
		    if @user.update(user_params)
		        format.html { redirect_to @user, notice: 'User was successfully updated.' }
		        format.json { render :show, status: :ok, location: @user }
	        else
		        format.html { render :edit }
		        format.json { render json: @user.errors, status: :unprocessable_entity }
	        end
	    end
    end





	private

	def set_user
        @user = User.find(params[:id])
    end

	def user_params

		params.require(:user).permit(:username,:email, :password)

	end



end
