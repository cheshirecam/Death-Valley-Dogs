class LatestsController < ApplicationController
  # GET /latests
  # GET /latests.xml
  def index
    @latest_hike_stories = HikeStory.latest
    @latest_trip_stories = TripStory.latest
    @latest_all = @latest_hike_stories + @latest_trip_stories
    @latest_all.sort! { |a,b| b.updated_at <=> a.updated_at}

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @latests }
    end
  end

  # GET /latests/1
  # GET /latests/1.xml
  def show
  end

  # GET /latests/new
  # GET /latests/new.xml
  def new
  end

  # GET /latests/1/edit
  def edit
  end

  # POST /latests
  # POST /latests.xml
  def create
  end

  # PUT /latests/1
  # PUT /latests/1.xml
  def update
  end

  # DELETE /latests/1
  # DELETE /latests/1.xml
  def destroy
  end
end
