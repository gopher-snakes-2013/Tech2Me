class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.text :author
      t.text :body
      t.belongs_to :question
      t.belongs_to :user
      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end
