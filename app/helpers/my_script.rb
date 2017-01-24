require 'httparty'
require 'pp'

class Coursera
  include HTTParty

  base_uri 'https://api.coursera.org/api/catalog.v1/courses'
  default_params fields: "smallIcon, shortDescription", q: "search"
  format :json

  def self.for term
    get("", query: {query: term})["elements"]
  end
end

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
pp Coursera.for "python"