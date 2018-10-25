class Comment < ApplicationRecord
has_many :users
has_many :gossiptables
end
