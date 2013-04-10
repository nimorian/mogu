# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  to_page_id :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Link < ActiveRecord::Base
end
