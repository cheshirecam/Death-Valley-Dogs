class RigsController < ApplicationController
  # GET /rigs
  # GET /rigs.xml
  def index
    @rigs = Rig.active

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rigs }
    end
  end

  # GET /rigs
  # GET /rigs.xml
  def retired_index
    @rigs = Rig.inactive

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rigs }
    end
  end

  # GET /rigs/1
  # GET /rigs/1.xml
  def show
    @rig = Rig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rig }
    end
  end

  # GET /rigs/new
  # GET /rigs/new.xml
  def new
    @rig = Rig.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rig }
    end
  end

  # GET /rigs/1/edit
  def edit
    @rig = Rig.find(params[:id])
  end

  # POST /rigs
  # POST /rigs.xml
  def create
    @rig = Rig.new(params[:rig])

    respond_to do |format|
      if @rig.save
        flash[:notice] = 'Rig was successfully created.'
        format.html { redirect_to(@rig) }
        format.xml  { render :xml => @rig, :status => :created, :location => @rig }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rigs/1
  # PUT /rigs/1.xml
  def update
    @rig = Rig.find(params[:id])

    respond_to do |format|
      if @rig.update_attributes(params[:rig])
        flash[:notice] = 'Rig was successfully updated.'
        format.html { redirect_to(@rig) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rigs/1
  # DELETE /rigs/1.xml
  def destroy
    @rig = Rig.find(params[:id])
    @rig.destroy

    respond_to do |format|
      format.html { redirect_to(rigs_url) }
      format.xml  { head :ok }
    end
  end
end
