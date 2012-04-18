class CreateRefineryPagePublications < ActiveRecord::Migration
  def up
    create_table :refinery_page_publications do |t|
      t.integer  :refinery_page_id
      t.string   :locale
      t.datetime :publish_at

      t.timestamps
    end

    add_index :refinery_page_publications, :refinery_page_id
  end

  def down
    drop_table :refinery_page_publications
  end
end
