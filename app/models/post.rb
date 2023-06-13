class Post < ApplicationRecord

belongs_to :display
belongs_to :user,optional: true
end
