class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.first

    render({ :template => "director_templates/details"})
  end

  def junior
    matching_directors = Director.order({ :dob => :desc })
    @the_youngest = matching_directors.first
  
    render({ :template => "director_templates/youngest" })
  end

  def grandpa
    matching_directors = Director.where.not(dob: nil).order({ :dob => :asc })
    @the_eldest = matching_directors.first
  
    render({ :template => "director_templates/eldest" })
  end
  
end
