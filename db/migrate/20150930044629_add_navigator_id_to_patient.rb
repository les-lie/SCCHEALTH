class AddNavigatorIdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :navigator_id, :integer
  end
end

