class Gossiptable < ApplicationRecord
has_and_belongs_to_many :tags, optional: true
has_many :users
belongs_to :comment, optional: true
end
