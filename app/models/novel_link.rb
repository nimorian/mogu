# == Schema Information
#
# Table name: novel_links
#
#  id         :integer          not null, primary key
#  page_id    :integer
#  to_page_id :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class NovelLink < ActiveRecord::Base
  belongs_to :page
end
