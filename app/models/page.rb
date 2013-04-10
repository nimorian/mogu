# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  novel_id   :integer
#  title      :string(255)
#  body       :text
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
end
