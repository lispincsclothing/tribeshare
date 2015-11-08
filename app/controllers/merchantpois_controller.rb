class MerchantpoisController < ApplicationController
  before_action :set_merchantpoi, only: [:show, :edit, :update, :destroy]

  # GET /merchantpois
  # GET /merchantpois.json
  def index
    @merchantpois = Merchantpoi.all
  end

  # GET /merchantpois/1
  # GET /merchantpois/1.json
  def show
  end

  # GET /merchantpois/new
  def new
    @merchantpoi = Merchantpoi.new
  end

  # GET /merchantpois/1/edit
  def edit
  end

  # POST /merchantpois
  # POST /merchantpois.json
  def create
    @merchantpoi = Merchantpoi.new(merchantpoi_params)

    respond_to do |format|
      if @merchantpoi.save
        format.html { redirect_to @merchantpoi, notice: 'Merchantpoi was successfully created.' }
        format.json { render :show, status: :created, location: @merchantpoi }
      else
        format.html { render :new }
        format.json { render json: @merchantpoi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchantpois/1
  # PATCH/PUT /merchantpois/1.json
  def update
    respond_to do |format|
      if @merchantpoi.update(merchantpoi_params)
        format.html { redirect_to @merchantpoi, notice: 'Merchantpoi was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchantpoi }
      else
        format.html { render :edit }
        format.json { render json: @merchantpoi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchantpois/1
  # DELETE /merchantpois/1.json
  def destroy
    @merchantpoi.destroy
    respond_to do |format|
      format.html { redirect_to merchantpois_url, notice: 'Merchantpoi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchantpoi
      @merchantpoi = Merchantpoi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchantpoi_params
      params.require(:merchantpoi).permit(:AggregateMerchantId, :AggregateMerchantName, :CleansedCityName, :CleansedCountryCode, :CleansedMerchantName, :CleansedMerchantPostalCode, :CleansedMerchantStreetAddress, :CleansedMerchantTelephoneNumber, :CleansedStateProvidenceCode, :CuisineCode, :DMACode, :GeocodeQualityIndicator, :HiddenGem, :InBusinessFlag, :Industry, :KeyAggregateMerchantId, :Latitude, :LocalFavorite, :Longitude, :MCCCode, :MSACode, :MerchantCityName, :MerchantCountryCode, :MerchantName, :MerchantPostalCode, :MerchantStateProvidenceCode, :MerchantStreetAddress, :NAICSCode, :NewBusinessFlag, :ParentAggregateMerchantId, :ParentAggregateMerchantName, :PrimaryChannelOfDistribution, :SuperIndustry)
    end
end
