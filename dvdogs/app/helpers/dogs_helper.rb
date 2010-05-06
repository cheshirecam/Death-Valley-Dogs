module DogsHelper
# probably dead code.  can be removed
  
  def dog_on_trip?(trip)
    if @dog 
        @dog.trips.include?(trip)
    else
        false
    end
  end

  def dog_on_hike?(hike)
    if @dog 
        @dog.hikes.include?(hike)
    else
        false
    end
  end

end
