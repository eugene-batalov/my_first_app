class CoursesController < ApplicationController
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  def index
    @search_term = params[:looking_for] || 'jhu'
    @courses = Coursera.for(@search_term)
  end
end
