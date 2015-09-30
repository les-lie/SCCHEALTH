class RenameColumntopicdiscussedinTablepatientstonavigator < ActiveRecord::Migration
  def change
  	rename_column :patients, :topicdiscussed, :navigator
  end
end
