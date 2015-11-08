require 'rails_helper'

RSpec.describe "merchantpois/show", type: :view do
  before(:each) do
    @merchantpoi = assign(:merchantpoi, Merchantpoi.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Aggregate Merchant/)
    expect(rendered).to match(/Aggregate Merchant Name/)
    expect(rendered).to match(/Cleansed City Name/)
    expect(rendered).to match(/Cleansed Country Code/)
    expect(rendered).to match(/Cleansed Merchant Name/)
    expect(rendered).to match(/Cleansed Merchant Postal Code/)
    expect(rendered).to match(/Cleansed Merchant Street Address/)
    expect(rendered).to match(/Cleansed Merchant Telephone Number/)
    expect(rendered).to match(/Cleansed State Providence Code/)
    expect(rendered).to match(/Cuisine Code/)
    expect(rendered).to match(/Dma Code/)
    expect(rendered).to match(/Geocode Quality Indicator/)
    expect(rendered).to match(/Hidden Gem/)
    expect(rendered).to match(/In Business Flag/)
    expect(rendered).to match(/Industry/)
    expect(rendered).to match(/Key Aggregate Merchant/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Local Favorite/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Mcc Code/)
    expect(rendered).to match(/Msa Code/)
    expect(rendered).to match(/Merchant City Name/)
    expect(rendered).to match(/Merchant Country Code/)
    expect(rendered).to match(/Merchant Name/)
    expect(rendered).to match(/Merchant Postal Code/)
    expect(rendered).to match(/Merchant State Providence Code/)
    expect(rendered).to match(/Merchant Street Address/)
    expect(rendered).to match(/Naics Code/)
    expect(rendered).to match(/New Business Flag/)
    expect(rendered).to match(/Parent Aggregate Merchant/)
    expect(rendered).to match(/Parent Aggregate Merchant Name/)
    expect(rendered).to match(/Primary Channel Of Distribution/)
    expect(rendered).to match(/Super Industry/)
  end
end
