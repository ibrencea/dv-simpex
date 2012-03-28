class PagesController < ApplicationController
  def index
    @itps = Itp.upcoming
  end
  

end
