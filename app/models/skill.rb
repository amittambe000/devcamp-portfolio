class Skill < ApplicationRecord
  include PortfoliosHelper

  validates_presence_of :title,:percent_utilized

end
