class CreateRefineryPagePublications < ActiveRecord::Migration
  # Faux model for migration.
  class Refinery::PagePublication < ActiveRecord::Base
    belongs_to :page, :foreign_key => :refinery_page_id
  end

  def up
    create_table :refinery_page_publications do |t|
      t.integer  :refinery_page_id
      t.string   :locale
      t.datetime :publish_at

      t.timestamps
    end

    add_index :refinery_page_publications, :refinery_page_id

    ActiveRecord::Base.transaction do
      Refinery::Page.find_each do |page|
        page.translations.map(&:locale).uniq.each do |locale|
          Refinery::PagePublication.create(:page => page, :locale => locale, :publish_at => page.created_at)
        end
      end
    end
  end

  def down
    drop_table :refinery_page_publications
  end
end
