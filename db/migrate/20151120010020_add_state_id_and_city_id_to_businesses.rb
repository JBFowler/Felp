class AddStateIdAndCityIdToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :city_id, :int
    add_column :businesses, :state_id, :int
  end
end
