class Category < ActiveRecord::Base
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates_presence_of :name
end