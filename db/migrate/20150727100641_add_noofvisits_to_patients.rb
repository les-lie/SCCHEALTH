class AddNoofvisitsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :noofvisits, :string
  end
end
