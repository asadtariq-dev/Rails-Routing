class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :name, uniqueness: true
  after_save_commit :log_product_saved
  after_destroy_commit :log_product_destroyed

  private

  def log_product_saved
    puts "=============\nProduct saved in the database\n============="
  end

  def log_product_destroyed
    puts "=============\nProduct deleted from the database\n============="
  end
end
