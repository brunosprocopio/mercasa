class SubCategory < ActiveRecord::Base
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates_presence_of :category

    belongs_to :category
end