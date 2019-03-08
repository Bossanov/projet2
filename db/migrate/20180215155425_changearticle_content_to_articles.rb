class ChangearticleContentToArticles < ActiveRecord::Migration[5.1]
  def change
    change_column :articles, :article_content, :text
  end
end
