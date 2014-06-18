class UsersController < ApplicationController
  layout 'user'
  def new
    u = User.new(name: request.POST["name"],
                email: request.POST["email"],
                login: request.POST["login"],
                 pass: request.POST["pass"])
    if u.save
      flash[:success] = "Profile created"
    else
      render 'new'
    end

  end

  def edit
    @user = User.where(id: params[:id])

  end

  def del
    if @d = User.find(params[:id]).destroy
      flash[:success] = "Profile deleted"
    else
      redirect_to @d
    end
    redirect_to '/users/view'
  end

  def view
    @user = User.all
  end
end
