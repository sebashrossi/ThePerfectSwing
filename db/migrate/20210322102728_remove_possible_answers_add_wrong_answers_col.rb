class RemovePossibleAnswersAddWrongAnswersCol < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :possible_answers
  end
end
