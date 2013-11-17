class Update < ActiveRecord::Base
	belongs_to :company
	validates_numericality_of :impact, :employed, :volunteers, :raised_funds
end
