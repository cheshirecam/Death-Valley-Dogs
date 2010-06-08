class DogsController < ApplicationController
    
  # GET /dogs
  # GET /dogs.xml
  def index
    @dogs = Dog.all
    @dogs_active = Dog.active
    
    @dogs_current = []
    @dogs_old = []

    @main_header = "Dogs"    
    # ok, this may be wrong, but I want to filter for if this dog has been on at least 
    # one of the last 3 trips.
    
    @dogs.each do |dog| 
      if (Trip.last3 - dog.trips).size < 3 then
        @dogs_current << dog
      else
        @dogs_old << dog
      end
    
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dogs }
    end
  end

  # GET /dogs
  # GET /dogs.xml
  def retired_index
    @dogs_inactive = Dog.inactive
    @main_header = "Retired Dogs"    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dogs_inactive }
    end
  end

  # GET /dogs/1
  # GET /dogs/1.xml
  def show
    @dog = Dog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dog }
    end
  end

  # GET /dogs/new
  # GET /dogs/new.xml
  def new
    @dog = Dog.new
    @main_header = "New Dog"    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dog }
    end
  end

  # GET /dogs/1/edit
  def edit
    @dog = Dog.find(params[:id])
    @main_header = "Edit Dog"    

  end

  # POST /dogs
  # POST /dogs.xml
  def create
    @dog = Dog.new(params[:dog])

    respond_to do |format|
      if @dog.save
        flash[:notice] = 'Dog was successfully created.'
        format.html { redirect_to(@dog) }
        format.xml  { render :xml => @dog, :status => :created, :location => @dog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dogs/1
  # PUT /dogs/1.xml
  def update

    params[:dog][:trip_ids] ||= []

    @dog = Dog.find(params[:id])

    respond_to do |format|
      if @dog.update_attributes(params[:dog])
        flash[:notice] = 'Dog was successfully updated.'
        format.html { redirect_to(@dog) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.xml
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    respond_to do |format|
      format.html { redirect_to(dogs_url) }
      format.xml  { head :ok }
    end
  end
end
