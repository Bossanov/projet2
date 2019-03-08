class AddThemeToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :theme, :string
  end
end
