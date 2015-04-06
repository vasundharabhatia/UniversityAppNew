class LineItem < ActiveRecord::Base
    belongs_to :college
    belongs_to :student
end
