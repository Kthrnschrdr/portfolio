class PagesController < ApplicationController
  skip_before_filter :authorize
  def welcome
    @name = "Katie"
  end
end