# == Schema Information
#
# Table name: novels
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  author     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Novel < ActiveRecord::Base
end
