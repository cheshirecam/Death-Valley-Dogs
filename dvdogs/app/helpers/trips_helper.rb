module TripsHelper
  def trip_has_dog?(dog)
    if @trip 
        @trip.dogs.include?(dog)
    else
        false
    end
  end
end
