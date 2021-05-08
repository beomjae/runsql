# == Schema Information
#
# Table name: data_sources
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  host       :string(255)
#  username   :string(255)
#  password   :string(255)
#  port       :string(255)      default("3306")
#  database   :string(255)
#  encoding   :string(255)      default("utf8mb4")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DataSourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
