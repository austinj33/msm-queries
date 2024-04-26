class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    render({ :template => "director_templates/details"})
  end
  
end
