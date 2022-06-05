class AddContinentIdToCountries < ActiveRecord::Migration[6.1]
  def change
    add_reference :countries, :continent, null: true, foreign_key: true
  end
end
