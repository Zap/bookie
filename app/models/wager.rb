class Wager < ActiveRecord::Base
  belongs_to :left_user, :class_name=>'User'
  belongs_to :right_user, :class_name=>'User'
end
