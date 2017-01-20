class SymbolsController < ApplicationController
  def show
    request = HTTParty.get "http://marketdata.websol.barchart.com/getQuote.json?key=0e2bcd86d86cdc7405b40551a340c5dc&symbols=NDAQ"
    render json: request
  end
end
