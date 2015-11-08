class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @campaign = Campaign.where(id: params[:campaign_id]).first
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @campaign = Campaign.find(params[:campaign_id])
    if current_user.mastercard_id !=nil
      customer = Simplify::Customer.find(current_user.mastercard_id)

        payment = Simplify::Payment.create({
            amount: params['amount'].to_i*100,
            key: ENV['simplify_public_key'],
            description: 'customer saved pay',
            customer: customer['id'],
            currency: 'USD'})
        #
        puts @message = payment['paymentStatus']

      else
        puts "params", params.inspect
        payment = Simplify::Payment.create({
          key: ENV['simplify_public_key'],
          amount: params['amount'].to_i*100,
          token: params['simplifyToken'],
          description: 'Simplify Rails Example',
          currency: 'USD'})
      @message = payment['paymentStatus']
      end
      if payment['paymentStatus'] == 'APPROVED'
        puts "Payment approved"
        @message = payment['paymentStatus']
        Payment.create!(user_id: current_user.id, campaign_id: params["campaign_id"] , amount:payment['amount'].to_i/100)
        redirect_to campaign_path(@campaign)
      end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:amount, :user_id, :campaign_id)
    end
end
