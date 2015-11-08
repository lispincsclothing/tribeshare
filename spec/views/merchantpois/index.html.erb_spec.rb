require 'rails_helper'

RSpec.describe "merchantpois/index", type: :view do
  before(:each) do
    assign(:merchantpois, [
      Merchantpoi.create!(
        :AggregateMerchantId => "Aggregate Merchant",
        :AggregateMerchantName => "Aggregate Merchant Name",
        :CleansedCityName => "Cleansed City Name",
        :CleansedCountryCode => "Cleansed Country Code",
        :CleansedMerchantName => "Cleansed Merchant Name",
        :CleansedMerchantPostalCode => "Cleansed Merchant Postal Code",
        :CleansedMerchantStreetAddress => "Cleansed Merchant Street Address",
        :CleansedMerchantTelephoneNumber => "Cleansed Merchant Telephone Number",
        :CleansedStateProvidenceCode => "Cleansed State Providence Code",
        :CuisineCode => "Cuisine Code",
        :DMACode => "Dma Code",
        :GeocodeQualityIndicator => "Geocode Quality Indicator",
        :HiddenGem => "Hidden Gem",
        :InBusinessFlag => "In Business Flag",
        :Industry => "Industry",
        :KeyAggregateMerchantId => "Key Aggregate Merchant",
        :Latitude => "Latitude",
        :LocalFavorite => "Local Favorite",
        :Longitude => "Longitude",
        :MCCCode => "Mcc Code",
        :MSACode => "Msa Code",
        :MerchantCityName => "Merchant City Name",
        :MerchantCountryCode => "Merchant Country Code",
        :MerchantName => "Merchant Name",
        :MerchantPostalCode => "Merchant Postal Code",
        :MerchantStateProvidenceCode => "Merchant State Providence Code",
        :MerchantStreetAddress => "Merchant Street Address",
        :NAICSCode => "Naics Code",
        :NewBusinessFlag => "New Business Flag",
        :ParentAggregateMerchantId => "Parent Aggregate Merchant",
        :ParentAggregateMerchantName => "Parent Aggregate Merchant Name",
        :PrimaryChannelOfDistribution => "Primary Channel Of Distribution",
        :SuperIndustry => "Super Industry"
      ),
      Merchantpoi.create!(
        :AggregateMerchantId => "Aggregate Merchant",
        :AggregateMerchantName => "Aggregate Merchant Name",
        :CleansedCityName => "Cleansed City Name",
        :CleansedCountryCode => "Cleansed Country Code",
        :CleansedMerchantName => "Cleansed Merchant Name",
        :CleansedMerchantPostalCode => "Cleansed Merchant Postal Code",
        :CleansedMerchantStreetAddress => "Cleansed Merchant Street Address",
        :CleansedMerchantTelephoneNumber => "Cleansed Merchant Telephone Number",
        :CleansedStateProvidenceCode => "Cleansed State Providence Code",
        :CuisineCode => "Cuisine Code",
        :DMACode => "Dma Code",
        :GeocodeQualityIndicator => "Geocode Quality Indicator",
        :HiddenGem => "Hidden Gem",
        :InBusinessFlag => "In Business Flag",
        :Industry => "Industry",
        :KeyAggregateMerchantId => "Key Aggregate Merchant",
        :Latitude => "Latitude",
        :LocalFavorite => "Local Favorite",
        :Longitude => "Longitude",
        :MCCCode => "Mcc Code",
        :MSACode => "Msa Code",
        :MerchantCityName => "Merchant City Name",
        :MerchantCountryCode => "Merchant Country Code",
        :MerchantName => "Merchant Name",
        :MerchantPostalCode => "Merchant Postal Code",
        :MerchantStateProvidenceCode => "Merchant State Providence Code",
        :MerchantStreetAddress => "Merchant Street Address",
        :NAICSCode => "Naics Code",
        :NewBusinessFlag => "New Business Flag",
        :ParentAggregateMerchantId => "Parent Aggregate Merchant",
        :ParentAggregateMerchantName => "Parent Aggregate Merchant Name",
        :PrimaryChannelOfDistribution => "Primary Channel Of Distribution",
        :SuperIndustry => "Super Industry"
      )
    ])
  end

  it "renders a list of merchantpois" do
    render
    assert_select "tr>td", :text => "Aggregate Merchant".to_s, :count => 2
    assert_select "tr>td", :text => "Aggregate Merchant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed City Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed Country Code".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed Merchant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed Merchant Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed Merchant Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed Merchant Telephone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Cleansed State Providence Code".to_s, :count => 2
    assert_select "tr>td", :text => "Cuisine Code".to_s, :count => 2
    assert_select "tr>td", :text => "Dma Code".to_s, :count => 2
    assert_select "tr>td", :text => "Geocode Quality Indicator".to_s, :count => 2
    assert_select "tr>td", :text => "Hidden Gem".to_s, :count => 2
    assert_select "tr>td", :text => "In Business Flag".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "Key Aggregate Merchant".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Local Favorite".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "Mcc Code".to_s, :count => 2
    assert_select "tr>td", :text => "Msa Code".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant City Name".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Country Code".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant State Providence Code".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Naics Code".to_s, :count => 2
    assert_select "tr>td", :text => "New Business Flag".to_s, :count => 2
    assert_select "tr>td", :text => "Parent Aggregate Merchant".to_s, :count => 2
    assert_select "tr>td", :text => "Parent Aggregate Merchant Name".to_s, :count => 2
    assert_select "tr>td", :text => "Primary Channel Of Distribution".to_s, :count => 2
    assert_select "tr>td", :text => "Super Industry".to_s, :count => 2
  end
end
