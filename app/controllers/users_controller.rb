class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy, :finish_signup]

  # GET /users/:id.:format
  def show
    # authorize! :read, @user
      @user=current_user
      # @campaigns = @user.campaigns.where(live: true)
  end

  def newpayment

  end

  def storepayment
    puts "hello key", ENV['simplify_public_key']
    puts "hello privatekey", ENV['simplify_private_key']

    customer = Simplify::Customer.create({
        "email" => "newestcustomer@yahoo.com",
        "key" => ENV['simplify_public_key'],
        "name" => "Customer3 Customer3",
        "card" => {
           "expMonth" => "11",
           "expYear" => "19",
           "cvc" => "123",
           "number" => "5105105105105100"
        },
        "reference" => "customertrial"
      })

    #   customer = Simplify::Customer.create({
    #   # "email" => current_user.email,
    #   "key" => ENV['simplify_public_key'],
    #   "name" => params['name'],
    #   "card" => {
    #      "expMonth" => params['date']['month'],
    #      "expYear" => params['date']['year'],
    #      "cvc" => params['cc-cvc'],
    #      "number" => params['cc-number']
    #   },
    #   "reference" => "Tribe Share "
    # })

    puts "use_id", use_id = customer['id']
     current_user.update(mastercard_id: customer['id'])
      redirect_to root_path
  end


  # GET /users/:id/edit
  def edit
    # authorize! :update, @user
  end

  # PATCH/PUT /users/:id.:format
  def update
    # authorize! :update, @user
    respond_to do |format|
      if @user.update(user_params)
        sign_in(@user == current_user ? @user : current_user, :bypass => true)
        format.html { redirect_to @user, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET/PATCH /users/:id/finish_signup
  def finish_signup
    # authorize! :update, @user
    if request.patch? && params[:user] #&& params[:user][:email]
      if @user.update(user_params)
        @user.skip_reconfirmation!
        sign_in(@user, :bypass => true)
        redirect_to root_path, notice: 'Your profile was successfully updated.'
      else
        @show_errors = true
      end
    end
  end

  # DELETE /users/:id.:format
  def destroy
    # authorize! :delete, @user
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      accessible = [ :name, :email ] # extend with your own params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible)
    end
end
