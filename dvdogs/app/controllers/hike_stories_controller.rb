class HikeStoriesController < ApplicationController
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])

  # GET /hike_stories
  # GET /hike_stories.xml
  def index
    @hike_stories = HikeStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hike_stories }
    end
  end

  # GET /hike_stories/1
  # GET /hike_stories/1.xml
  def show
    @hike_story = HikeStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hike_story }
    end
  end

  # GET /hike_stories/new
  # GET /hike_stories/new.xml
  def new
    @hike_story = HikeStory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hike_story }
    end
  end

  # GET /hike_stories/1/edit
  def edit
    @hike_story = HikeStory.find(params[:id])
  end

  # POST /hike_stories
  # POST /hike_stories.xml
  def create
    @hike_story = HikeStory.new(params[:hike_story])

    respond_to do |format|
      if @hike_story.save
        flash[:notice] = 'Write-up was successfully created.'
        format.html { redirect_to(@hike_story.hike) }
        format.xml  { render :xml => @hike_story, :status => :created, :location => @hike_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hike_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hike_stories/1
  # PUT /hike_stories/1.xml
  def update
    @hike_story = HikeStory.find(params[:id])

    respond_to do |format|
      if @hike_story.update_attributes(params[:hike_story])
        flash[:notice] = 'HikeStory was successfully updated.'
        format.html { redirect_to(@hike_story) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hike_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hike_stories/1
  # DELETE /hike_stories/1.xml
  def destroy
    @hike_story = HikeStory.find(params[:id])
    @hike = @hike_story.hike
    @hike_story.destroy

    respond_to do |format|
      format.html { redirect_to(@hike) }
      format.xml  { head :ok }
    end
  end
end
