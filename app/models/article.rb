class Article < ApplicationRecord
    has_many :events
    has_many :launches

    accepts_nested_attributes_for :events
    accepts_nested_attributes_for :launches
end
