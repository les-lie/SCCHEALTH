class CreatePatients < ActiveRecord::Migration
  def change
     create_table :patients do |t|
      t.date :startdate
      t.time :starttime
      t.string :initialcontact
      t.string :agerange
      t.string :gender
      t.string :languagespeaking
      t.string :languagereading
      t.string :computer
      t.string :computerskills
      t.string :topicdiscussed
      t.string :timelength
      t.string :notes
      t.string :noofparticipant
      t.string :noofinteraction
      t.string :location
      t.integer:userid
    end
  end
end
