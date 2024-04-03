# == Schema Information
#
# Table name: stations
#
#  id         :integer          not null, primary key
#  map        :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Station < ApplicationRecord
has_many :favorites 
end
