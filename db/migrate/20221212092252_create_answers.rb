class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.belongs_to :question, foreign_key: true, null: false
      t.string :content

      t.timestamps
    end
  end
end
