class Experience < ApplicationRecord
    self.inheritance_column = nil # Prevents Rails from using `type` for STI
  
    validates :experience_type, presence: true, inclusion: { in: %w[work education] }
  end
  