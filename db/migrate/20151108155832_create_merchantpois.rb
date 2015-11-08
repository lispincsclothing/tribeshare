class CreateMerchantpois < ActiveRecord::Migration
  def change
    create_table :merchantpois do |t|
      t.string :AggregateMerchantId
      t.string :AggregateMerchantName
      t.string :CleansedCityName
      t.string :CleansedCountryCode
      t.string :CleansedMerchantName
      t.string :CleansedMerchantPostalCode
      t.string :CleansedMerchantStreetAddress
      t.string :CleansedMerchantTelephoneNumber
      t.string :CleansedStateProvidenceCode
      t.string :CuisineCode
      t.string :DMACode
      t.string :GeocodeQualityIndicator
      t.string :HiddenGem
      t.string :InBusinessFlag
      t.string :Industry
      t.string :KeyAggregateMerchantId
      t.string :Latitude
      t.string :LocalFavorite
      t.string :Longitude
      t.string :MCCCode
      t.string :MSACode
      t.string :MerchantCityName
      t.string :MerchantCountryCode
      t.string :MerchantName
      t.string :MerchantPostalCode
      t.string :MerchantStateProvidenceCode
      t.string :MerchantStreetAddress
      t.string :NAICSCode
      t.string :NewBusinessFlag
      t.string :ParentAggregateMerchantId
      t.string :ParentAggregateMerchantName
      t.string :PrimaryChannelOfDistribution
      t.string :SuperIndustry

      t.timestamps null: false
    end
  end
end
