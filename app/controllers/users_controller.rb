class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    if session[:user_id]
      @my_profile=User.find(session[:user_id]) 
    end 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if (params[:id].to_i == session[:user_id].to_i)
      @user = User.find(params[:id])
    else
      redirect_to "/users/#{params[:id]}", notice: "You may not modify another user's profile"
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
      if @user.save
        redirect_to root_url, notice:  "User was successfully created." 
      else
        render "new"
      end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to log_out_path

  end
end
