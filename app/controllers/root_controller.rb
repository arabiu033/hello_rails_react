class RootController < ApplicationController
  def index
    @greeting = helpers.random_greetings

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @greeting }
      format.json { render json: @greeting }
    end
  end
end
