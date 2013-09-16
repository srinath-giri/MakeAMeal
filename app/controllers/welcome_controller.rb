class WelcomeController < ApplicationController

  def index
  end

  def reviews
    @rating = "4.2 / 5"  if(params[:id] == "1")
    @rating = "4 / 5"  if(params[:id] == "2")

      respond_to do |format|
        format.xml
      end
  end
end
