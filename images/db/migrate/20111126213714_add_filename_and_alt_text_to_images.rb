class AddFilenameAndAltTextToImages < ActiveRecord::Migration
  def up
    ::Refinery::Image.create_translation_table! :filename => :string, :alt => :text
  end

  def down
    ::Refinery::Image.drop_translation_table!
  end
end
