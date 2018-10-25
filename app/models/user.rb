class User < ApplicationRecord
belongs_to :city, optional: true
belongs_to :gossiptable, optional: true
belongs_to :tag, optional: true
belongs_to :comment, optional: true
has_many :private_messages
end
