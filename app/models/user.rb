class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_questions, class_name: 'Question', foreign_key: :sender_id, dependent: :destroy
  has_many :received_questions, class_name: 'Question', foreign_key: :recipient_id, dependent: :destroy
  has_many :answers
end
