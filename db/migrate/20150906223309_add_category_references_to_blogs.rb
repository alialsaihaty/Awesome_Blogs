class AddCategoryReferencesToBlogs < ActiveRecord::Migration
  def change
    add_reference :blogs, :category, index: true, foreign_key: true
  end
end
