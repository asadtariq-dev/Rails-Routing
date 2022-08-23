class Product < ApplicationRecord
  enum :status, %w[fresh old not_available]
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :name, uniqueness: true
  after_save_commit :log_product_saved
  after_destroy_commit :log_product_destroyed

  validate :validate_name

  # def name
  #   "This is #{super}"
  # end

  def validate_name
    if name.present? && name.include?('X')
      errors.add(:name, 'X is found in Name')
    end
  end

  private

  def log_product_saved
    puts "=============\nProduct saved in the database\n============="
  end

  def log_product_destroyed
    puts "=============\nProduct deleted from the database\n============="
  end
end
