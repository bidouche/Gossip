class User < ApplicationRecord
belongs_to :city, optional: true
belongs_to :gossiptable, optional: true
belongs_to :tag, optional: true
end
