# == Schema Information
#
# Table name: novel_pages
#
#  id         :integer          not null, primary key
#  novel_id   :integer
#  title      :string(255)
#  body       :text
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

class NovelPage < ActiveRecord::Base
  belongs_to :novel
end
