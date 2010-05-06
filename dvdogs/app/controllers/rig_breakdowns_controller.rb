class RigBreakdownsController < ApplicationController
  # GET /rig_breakdowns
  # GET /rig_breakdowns.xml
  def index
    @rig_breakdowns = RigBreakdown.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rig_breakdowns }
    end
  end

  # GET /rig_breakdowns/1
  # GET /rig_breakdowns/1.xml
  def show
    @rig_breakdown = RigBreakdown.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rig_breakdown }
    end
  end

  # GET /rig_breakdowns/new
  # GET /rig_breakdowns/new.xml
  def new
    @rig_breakdown = RigBreakdown.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rig_breakdown }
    end
  end

  # GET /rig_breakdowns/1/edit
  def edit
    @rig_breakdown = RigBreakdown.find(params[:id])
  end

  # POST /rig_breakdowns
  # POST /rig_breakdowns.xml
  def create
    @rig_breakdown = RigBreakdown.new(params[:rig_breakdown])

    respond_to do |format|
      if @rig_breakdown.save
        flash[:notice] = 'RigBreakdown was successfully created.'
        format.html { redirect_to(@rig_breakdown) }
        format.xml  { render :xml => @rig_breakdown, :status => :created, :location => @rig_breakdown }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rig_breakdown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rig_breakdowns/1
  # PUT /rig_breakdowns/1.xml
  def update
    @rig_breakdown = RigBreakdown.find(params[:id])

    respond_to do |format|
      if @rig_breakdown.update_attributes(params[:rig_breakdown])
        flash[:notice] = 'RigBreakdown was successfully updated.'
        format.html { redirect_to(@rig_breakdown) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rig_breakdown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rig_breakdowns/1
  # DELETE /rig_breakdowns/1.xml
  def destroy
    @rig_breakdown = RigBreakdown.find(params[:id])
    @rig_breakdown.destroy

    respond_to do |format|
      format.html { redirect_to(rig_breakdowns_url) }
      format.xml  { head :ok }
    end
  end
end
