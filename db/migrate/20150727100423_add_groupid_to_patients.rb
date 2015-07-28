class AddGroupidToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :groupid, :string
  end
end
