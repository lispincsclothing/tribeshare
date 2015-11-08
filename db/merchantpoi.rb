require 'open-uri'
require 'json'

json_object = JSON.parse(open("http://dmartin.org:8026/merchantpoi/v1/merchantpoisvc.svc/merchantpoi?PostalCode=10013&format=json&MCCCode=5812").read)
json_object = json_object['MerchantPOIList']['MerchantPOIArray']['MerchantPOI']
json_object.each{ |poi| Merchantpoi.create!(poi)  }
