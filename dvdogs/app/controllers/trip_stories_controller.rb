class TripStoriesController < ApplicationController
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])
  # GET /trip_stories
  # GET /trip_stories.xml
  def index
    @trip_stories = TripStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trip_stories }
    end
  end

  # GET /trip_stories/1
  # GET /trip_stories/1.xml
  def show
    @trip_story = TripStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trip_story }
    end
  end

  # GET /trip_stories/new
  # GET /trip_stories/new.xml
  def new
    @trip_story = TripStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trip_story }
    end
  end

  # GET /trip_stories/1/edit
  def edit
    @trip_story = TripStory.find(params[:id])
  end

  # POST /trip_stories
  # POST /trip_stories.xml
  def create
    @trip_story = TripStory.new(params[:trip_story])

    respond_to do |format|
      if @trip_story.save
        flash[:notice] = 'TripStory was successfully created.'
        format.html { redirect_to(@trip_story) }
        format.xml  { render :xml => @trip_story, :status => :created, :location => @trip_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trip_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trip_stories/1
  # PUT /trip_stories/1.xml
  def update
    @trip_story = TripStory.find(params[:id])

    respond_to do |format|
      if @trip_story.update_attributes(params[:trip_story])
        flash[:notice] = 'TripStory was successfully updated.'
        format.html { redirect_to(@trip_story) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trip_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_stories/1
  # DELETE /trip_stories/1.xml
  def destroy
    @trip_story = TripStory.find(params[:id])
    @trip_story.destroy

    respond_to do |format|
      format.html { redirect_to(trip_stories_url) }
      format.xml  { head :ok }
    end
  end
end
