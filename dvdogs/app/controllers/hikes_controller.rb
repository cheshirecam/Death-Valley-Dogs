class HikesController < ApplicationController
  # GET /hikes
  # GET /hikes.xml
  def index
    @hikes = Hike.by_date

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hikes }
    end
  end

  # GET /hikes/1
  # GET /hikes/1.xml
  def show
    @hike = Hike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hike }
    end
  end

  # GET /hikes/new
  # GET /hikes/new.xml
  def new
    @hike = Hike.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hike }
    end
  end

  # GET /hikes/1/edit
  def edit
    @hike = Hike.find(params[:id])
  end

  # POST /hikes
  # POST /hikes.xml
  def create
    @hike = Hike.new(params[:hike])

    respond_to do |format|
      if @hike.save
        flash[:notice] = 'Hike was successfully created.'
        format.html { redirect_to(@hike) }
        format.xml  { render :xml => @hike, :status => :created, :location => @hike }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hike.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hikes/1
  # PUT /hikes/1.xml
  def update
    @hike = Hike.find(params[:id])

    respond_to do |format|
      if @hike.update_attributes(params[:hike])
        flash[:notice] = 'Hike was successfully updated.'
        format.html { redirect_to(@hike) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hike.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hikes/1
  # DELETE /hikes/1.xml
  def destroy
    @hike = Hike.find(params[:id])
    @hike.destroy

    respond_to do |format|
      format.html { redirect_to(hikes_url) }
      format.xml  { head :ok }
    end
  end
end
