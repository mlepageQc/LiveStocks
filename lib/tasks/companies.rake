require 'http'
require 'json'

intrinio_username = "6e4676d4e585dc168502385910efd19f"
intrino_password = "8d092d7bf7955b1ed291d8636936b799"

data_point_url = "https://api.intrinio.com/data_point?"

namespace :companies do
  desc "Screening for new companies"
  task :update_companies_list => :environment do

    empty_response = false
    i = 0
    new_companies = []

    while !empty_response do
      screening_url = "https://api.intrinio.com/companies?page_number=#{i}"
      response = HTTP.basic_auth(:user => intrinio_username, :pass => intrino_password)
                  .get(screening_url)
                  .body
      companies = JSON.parse(response)["data"]
      if companies.length == 0
        empty_response = true
      else
        existing_companies_tickers = Company.all.pluck(:ticker)
        companies = companies.select { |c| existing_companies_tickers.index(c["ticker"]).nil? }
        companies = companies.collect { |c| { :ticker => c["ticker"], name: c["name"] } }
        new_companies += companies
      end
      i += 1
    end
    Company.create([new_companies])
  end
end
