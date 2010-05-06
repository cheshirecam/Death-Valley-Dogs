class RigUpgradesController < ApplicationController
  # GET /rig_upgrades
  # GET /rig_upgrades.xml
  def index
    @rig_upgrades = RigUpgrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rig_upgrades }
    end
  end

  # GET /rig_upgrades/1
  # GET /rig_upgrades/1.xml
  def show
    @rig_upgrade = RigUpgrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rig_upgrade }
    end
  end

  # GET /rig_upgrades/new
  # GET /rig_upgrades/new.xml
  def new
    @rig_upgrade = RigUpgrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rig_upgrade }
    end
  end

  # GET /rig_upgrades/1/edit
  def edit
    @rig_upgrade = RigUpgrade.find(params[:id])
  end

  # POST /rig_upgrades
  # POST /rig_upgrades.xml
  def create
    @rig_upgrade = RigUpgrade.new(params[:rig_upgrade])

    respond_to do |format|
      if @rig_upgrade.save
        flash[:notice] = 'RigUpgrade was successfully created.'
        format.html { redirect_to(@rig_upgrade) }
        format.xml  { render :xml => @rig_upgrade, :status => :created, :location => @rig_upgrade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rig_upgrade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rig_upgrades/1
  # PUT /rig_upgrades/1.xml
  def update
    @rig_upgrade = RigUpgrade.find(params[:id])

    respond_to do |format|
      if @rig_upgrade.update_attributes(params[:rig_upgrade])
        flash[:notice] = 'RigUpgrade was successfully updated.'
        format.html { redirect_to(@rig_upgrade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rig_upgrade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rig_upgrades/1
  # DELETE /rig_upgrades/1.xml
  def destroy
    @rig_upgrade = RigUpgrade.find(params[:id])
    @rig_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to(rig_upgrades_url) }
      format.xml  { head :ok }
    end
  end
end
