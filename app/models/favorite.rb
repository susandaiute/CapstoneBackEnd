class Favorite < ActiveRecord::Base
  belongs_to :user, inverse_of: :favorites, class_name: 'User'
end
