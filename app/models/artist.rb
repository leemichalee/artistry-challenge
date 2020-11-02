class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments

    validates :name, presence: true
    validates :title, uniqueness: true
    validates :age, numericality: (greater_than:90)

    def name_plus_title
        "#{self.name} || #{self.title}"
    end
end
