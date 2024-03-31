# == Schema Information
#
# Table name: stations
#
#  id          :integer          not null, primary key
#  destination :string
#  eta         :string
#  line        :string
#  name        :string
#  run_number  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Station < ApplicationRecord
end
