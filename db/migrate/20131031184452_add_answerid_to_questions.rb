class AddAnsweridToQuestions < ActiveRecord::Migration
  def up
    add_column :answers, :question_id, :integer
  end

  def down
    remove_column :answers
  end
end
