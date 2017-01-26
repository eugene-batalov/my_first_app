class CoursesController < ApplicationController
#  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  def index
    @search_term = 'java'
    @courses = Coursera.for(@search_term)
  end
end
