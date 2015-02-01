class CreateTovars < ActiveRecord::Migration
  
  def up
    create_table :tovars do |t|
      t.string :name
      t.string :article
      t.string :comment

      t.timestamps 
    end
  end

  def down
  	drop_table :tovars
  end

end
