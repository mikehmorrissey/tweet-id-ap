class TweetExistValidator < ActiveModel::EachValidator
	def validate_each (object, attribute, value)
		if Twitter.status(value).nil?
			object.errors[attribute] << "No Tweet exists with given ID"
		end
	end
end