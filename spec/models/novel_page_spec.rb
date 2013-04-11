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

require 'spec_helper'

describe NovelPage do
  pending "add some examples to (or delete) #{__FILE__}"
end
