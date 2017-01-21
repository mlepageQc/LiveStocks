# == Schema Information
#
# Table name: companies
#
#  date        :datetime
#  open        :float
#  high        :float
#  low         :float
#  close       :float
#  volume      :float
#  ex_dividen  :float
#  split_ratio :float
#  adj_open    :float
#  adj_high    :float
#  adj_low     :float
#  ajd_close   :float
#  adj_volume  :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ticker      :string           not null, primary key
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
