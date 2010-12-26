require 'test_helper'

class WagerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  context 'a Wager' do
    setup do
      @wager = Factory :wager
    end
    
    should belong_to :left_user
    should belong_to :right_user
  end
end

