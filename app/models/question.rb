class Question < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :recipient, class_name: 'User', foreign_key: 'recipient_id'
  has_one :answer, class_name: 'Answer', foreign_key: 'answer_id'
end
