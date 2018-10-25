class Tag < ApplicationRecord
has_and_belongs_to_many :gossiptables , optional: true
belongs_to :user, optional: true
end
