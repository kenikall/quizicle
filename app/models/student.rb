class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :skills

  validates :first_name, presence: true

  def name
    first_name+ " "+ last_name
  end
end

