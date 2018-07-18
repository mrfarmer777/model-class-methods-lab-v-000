class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification


  def get_classifications_for(boat)
    where("boat_id=#{boat.id}").pluck(:classification_id)
  end
end
