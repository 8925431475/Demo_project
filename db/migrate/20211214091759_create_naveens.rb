class CreateNaveens < ActiveRecord::Migration[6.1]
  def change
    create_table :naveens do |t|
      t.string :name1
     # t.string :phone

      t.timestamps
    end
  end
end
