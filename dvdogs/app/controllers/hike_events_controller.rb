class HikeEventsController < ApplicationController
  # GET /hike_events
  # GET /hike_events.xml
  def index
    @hike_events = HikeEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hike_events }
    end
  end

  # GET /hike_events/1
  # GET /hike_events/1.xml
  def show
    @hike_event = HikeEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hike_event }
    end
  end

  # GET /hike_events/new
  # GET /hike_events/new.xml
  def new
    @hike_event = HikeEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hike_event }
    end
  end

  # GET /hike_events/1/edit
  def edit
    @hike_event = HikeEvent.find(params[:id])
  end

  # POST /hike_events
  # POST /hike_events.xml
  def create
    @hike_event = HikeEvent.new(params[:hike_event])

    respond_to do |format|
      if @hike_event.save
        flash[:notice] = 'HikeEvent was successfully created.'
        format.html { redirect_to(@hike_event) }
        format.xml  { render :xml => @hike_event, :status => :created, :location => @hike_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hike_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hike_events/1
  # PUT /hike_events/1.xml
  def update
    @hike_event = HikeEvent.find(params[:id])

    respond_to do |format|
      if @hike_event.update_attributes(params[:hike_event])
        flash[:notice] = 'HikeEvent was successfully updated.'
        format.html { redirect_to(@hike_event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hike_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hike_events/1
  # DELETE /hike_events/1.xml
  def destroy
    @hike_event = HikeEvent.find(params[:id])
    @hike_event.destroy

    respond_to do |format|
      format.html { redirect_to(hike_events_url) }
      format.xml  { head :ok }
    end
  end
end
