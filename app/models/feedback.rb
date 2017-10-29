class Feedback < ApplicationRecord
	validates :title, :text, presence: true                    
end
