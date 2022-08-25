class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :char_name
      t.string :char_email
      t.string :int_document
      t.date :date_dt_birth
      t.string :char_cep
      t.string :char_street
      t.string :int_neighbourhood
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
