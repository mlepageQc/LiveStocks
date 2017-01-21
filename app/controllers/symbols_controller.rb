class SymbolsController < ApplicationController
  def index
    request = HTTParty.get "http://marketdata.websol.barchart.com/getQuote.json?key=0e2bcd86d86cdc7405b40551a340c5dc&symbols=NDAQ"
    render js
  end
end
