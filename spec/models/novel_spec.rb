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

require 'spec_helper'

describe Novel do
  pending "add some examples to (or delete) #{__FILE__}"
end
