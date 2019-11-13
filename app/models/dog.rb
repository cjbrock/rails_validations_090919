class Dog < ApplicationRecord
    validates :name, :bones, :fur_color, :owner, :breed, presence: true
    validates :name, length: { minimum: 2 }
    validates :fur_color, inclusion: { in: %w(black brown white spotted),
        message: "%{value} is not a valid color" }
end
