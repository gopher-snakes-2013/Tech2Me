class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :author
      t.text :answer
      t.belongs_to :question
      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end
