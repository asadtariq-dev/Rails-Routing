class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: true
  after_save_commit :log_product_saved

  private

  def log_product_saved
    puts 'Product saved to database'
  end
end
