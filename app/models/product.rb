class Product < ActiveRecord::Base
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    attr_accessor :sub_category_id
    
    validates_presence_of :name, :producer

    belongs_to :sub_category
end