# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  firsname   :string
#  lastname   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  validates :lastname, presence: true
end
