class CreateMyClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :my_classes do |t|
      t.belongs_to :user, index: true
      t.string :course_title
      t.string :topic

      t.timestamps
    end
  end
end
