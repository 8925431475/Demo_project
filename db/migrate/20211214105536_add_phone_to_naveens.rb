class AddPhoneToNaveens < ActiveRecord::Migration[6.1]
  def change
    add_column :naveens, :phone, :string
    #add_column :naveens, :, :string
  end
end
