class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.belongs_to :sender, foreign_key: { to_table: :users }, null: false
      t.belongs_to :recipient, foreign_key: { to_table: :users }, null: false
      t.string :content
      t.boolean :public

      t.timestamps
    end
  end
end
