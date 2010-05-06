class GpsController < ApplicationController
  # GET /gps
  # GET /gps.xml
  def index
    @gps = Gp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gps }
    end
  end

  # GET /gps/1
  # GET /gps/1.xml
  def show
    @gp = Gp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gp }
    end
  end

  # GET /gps/new
  # GET /gps/new.xml
  def new
    @gp = Gp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gp }
    end
  end

  # GET /gps/1/edit
  def edit
    @gp = Gp.find(params[:id])
  end

  # POST /gps
  # POST /gps.xml
  def create
    @gp = Gp.new(params[:gp])

    respond_to do |format|
      if @gp.save
        flash[:notice] = 'Gp was successfully created.'
        format.html { redirect_to(@gp) }
        format.xml  { render :xml => @gp, :status => :created, :location => @gp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gps/1
  # PUT /gps/1.xml
  def update
    @gp = Gp.find(params[:id])

    respond_to do |format|
      if @gp.update_attributes(params[:gp])
        flash[:notice] = 'Gp was successfully updated.'
        format.html { redirect_to(@gp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gps/1
  # DELETE /gps/1.xml
  def destroy
    @gp = Gp.find(params[:id])
    @gp.destroy

    respond_to do |format|
      format.html { redirect_to(gps_url) }
      format.xml  { head :ok }
    end
  end
end
