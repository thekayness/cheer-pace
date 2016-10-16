class CreateCheers < ActiveRecord::Migration[5.0]
  def change
    create_table :cheers do |t|
      t.string :content
      t.belongs_to :user, index: true
      t.belongs_to :my_class, index: true

      t.timestamps
    end
  end
end
