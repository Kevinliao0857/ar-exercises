class Store < ActiveRecord::Base
  has_many :employees

  # * Stores must always have a name that is a minimum of 3 characters
  # * Stores have an annual_revenue that is a number (integer) that must be 0 or more
  # * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)

  validates :name, length: { minimum: 3}

  validates :annual_revenue, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }

end
