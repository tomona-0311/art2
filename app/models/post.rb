class Post < ApplicationRecord

belongs_to :displays
belongs_to :user,optional: true
end
