class Removecolumnnoofparticipanttablepatients < ActiveRecord::Migration
  def change
  	remove_column :patients, :noofparticipant
  end
end
