require 'rails_helper'

RSpec.describe "merchantpois/new", type: :view do
  before(:each) do
    assign(:merchantpoi, Merchantpoi.new(
      :AggregateMerchantId => "MyString",
      :AggregateMerchantName => "MyString",
      :CleansedCityName => "MyString",
      :CleansedCountryCode => "MyString",
      :CleansedMerchantName => "MyString",
      :CleansedMerchantPostalCode => "MyString",
      :CleansedMerchantStreetAddress => "MyString",
      :CleansedMerchantTelephoneNumber => "MyString",
      :CleansedStateProvidenceCode => "MyString",
      :CuisineCode => "MyString",
      :DMACode => "MyString",
      :GeocodeQualityIndicator => "MyString",
      :HiddenGem => "MyString",
      :InBusinessFlag => "MyString",
      :Industry => "MyString",
      :KeyAggregateMerchantId => "MyString",
      :Latitude => "MyString",
      :LocalFavorite => "MyString",
      :Longitude => "MyString",
      :MCCCode => "MyString",
      :MSACode => "MyString",
      :MerchantCityName => "MyString",
      :MerchantCountryCode => "MyString",
      :MerchantName => "MyString",
      :MerchantPostalCode => "MyString",
      :MerchantStateProvidenceCode => "MyString",
      :MerchantStreetAddress => "MyString",
      :NAICSCode => "MyString",
      :NewBusinessFlag => "MyString",
      :ParentAggregateMerchantId => "MyString",
      :ParentAggregateMerchantName => "MyString",
      :PrimaryChannelOfDistribution => "MyString",
      :SuperIndustry => "MyString"
    ))
  end

  it "renders new merchantpoi form" do
    render

    assert_select "form[action=?][method=?]", merchantpois_path, "post" do

      assert_select "input#merchantpoi_AggregateMerchantId[name=?]", "merchantpoi[AggregateMerchantId]"

      assert_select "input#merchantpoi_AggregateMerchantName[name=?]", "merchantpoi[AggregateMerchantName]"

      assert_select "input#merchantpoi_CleansedCityName[name=?]", "merchantpoi[CleansedCityName]"

      assert_select "input#merchantpoi_CleansedCountryCode[name=?]", "merchantpoi[CleansedCountryCode]"

      assert_select "input#merchantpoi_CleansedMerchantName[name=?]", "merchantpoi[CleansedMerchantName]"

      assert_select "input#merchantpoi_CleansedMerchantPostalCode[name=?]", "merchantpoi[CleansedMerchantPostalCode]"

      assert_select "input#merchantpoi_CleansedMerchantStreetAddress[name=?]", "merchantpoi[CleansedMerchantStreetAddress]"

      assert_select "input#merchantpoi_CleansedMerchantTelephoneNumber[name=?]", "merchantpoi[CleansedMerchantTelephoneNumber]"

      assert_select "input#merchantpoi_CleansedStateProvidenceCode[name=?]", "merchantpoi[CleansedStateProvidenceCode]"

      assert_select "input#merchantpoi_CuisineCode[name=?]", "merchantpoi[CuisineCode]"

      assert_select "input#merchantpoi_DMACode[name=?]", "merchantpoi[DMACode]"

      assert_select "input#merchantpoi_GeocodeQualityIndicator[name=?]", "merchantpoi[GeocodeQualityIndicator]"

      assert_select "input#merchantpoi_HiddenGem[name=?]", "merchantpoi[HiddenGem]"

      assert_select "input#merchantpoi_InBusinessFlag[name=?]", "merchantpoi[InBusinessFlag]"

      assert_select "input#merchantpoi_Industry[name=?]", "merchantpoi[Industry]"

      assert_select "input#merchantpoi_KeyAggregateMerchantId[name=?]", "merchantpoi[KeyAggregateMerchantId]"

      assert_select "input#merchantpoi_Latitude[name=?]", "merchantpoi[Latitude]"

      assert_select "input#merchantpoi_LocalFavorite[name=?]", "merchantpoi[LocalFavorite]"

      assert_select "input#merchantpoi_Longitude[name=?]", "merchantpoi[Longitude]"

      assert_select "input#merchantpoi_MCCCode[name=?]", "merchantpoi[MCCCode]"

      assert_select "input#merchantpoi_MSACode[name=?]", "merchantpoi[MSACode]"

      assert_select "input#merchantpoi_MerchantCityName[name=?]", "merchantpoi[MerchantCityName]"

      assert_select "input#merchantpoi_MerchantCountryCode[name=?]", "merchantpoi[MerchantCountryCode]"

      assert_select "input#merchantpoi_MerchantName[name=?]", "merchantpoi[MerchantName]"

      assert_select "input#merchantpoi_MerchantPostalCode[name=?]", "merchantpoi[MerchantPostalCode]"

      assert_select "input#merchantpoi_MerchantStateProvidenceCode[name=?]", "merchantpoi[MerchantStateProvidenceCode]"

      assert_select "input#merchantpoi_MerchantStreetAddress[name=?]", "merchantpoi[MerchantStreetAddress]"

      assert_select "input#merchantpoi_NAICSCode[name=?]", "merchantpoi[NAICSCode]"

      assert_select "input#merchantpoi_NewBusinessFlag[name=?]", "merchantpoi[NewBusinessFlag]"

      assert_select "input#merchantpoi_ParentAggregateMerchantId[name=?]", "merchantpoi[ParentAggregateMerchantId]"

      assert_select "input#merchantpoi_ParentAggregateMerchantName[name=?]", "merchantpoi[ParentAggregateMerchantName]"

      assert_select "input#merchantpoi_PrimaryChannelOfDistribution[name=?]", "merchantpoi[PrimaryChannelOfDistribution]"

      assert_select "input#merchantpoi_SuperIndustry[name=?]", "merchantpoi[SuperIndustry]"
    end
  end
end
