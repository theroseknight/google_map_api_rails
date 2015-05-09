class Vacation < ActiveRecord::Base
  has_many :legs

  accepts_nested_attributes_for :legs

  def attributes
		leg_ids=legs.map{|leg|leg.id}
		super.merge({
			"leg_ids"=>leg_ids
		})
	end
end
