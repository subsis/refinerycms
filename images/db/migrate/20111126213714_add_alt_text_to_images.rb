class AddAltTextToImages < ActiveRecord::Migration
  def up
    ::Refinery::Image.create_translation_table! :alt => :text
  end

  def down
    ::Refinery::Image.drop_translation_table!
  end
end
