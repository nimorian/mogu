# == Schema Information
#
# Table name: novels
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  author     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Novel < ActiveRecord::Base
end
