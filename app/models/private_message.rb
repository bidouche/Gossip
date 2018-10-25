class Private_Message < ApplicationRecord
has_and_belongs_to_many :recipients, class_name: "User" , optional: true
belongs_to :sender, class_name: "User" , optional: true
end