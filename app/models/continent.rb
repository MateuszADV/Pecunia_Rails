class Continent < ApplicationRecord
  has_many :countries
  def to_s
    name_en
  end
  def to_s
    name_pl
  end
end
