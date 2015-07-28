class Patient < ActiveRecord::Base

  validates :startdate, presence: true
  validates :starttime, presence: true
  validates :initialcontact, presence: true
  validates :agerange, presence: true
  validates :gender, presence: true
  validates :languagespeaking, presence: true
  validates :languagereading, presence: true
  validates :computer, presence: true
  validates :computerskills, presence: true
  validates :topicdiscussed, presence: true
  validates :timelength, presence: true
  validates :notes, presence: true
  validates :noofparticipant, presence: true
  validates :noofinteraction, presence: true
  validates :location, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |patient|
        csv << patient.attributes.values_at(*column_names)
      end
    end
  end
end
