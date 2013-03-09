class TweetExistValidator < ActiveModel::EachValidator
	def validate_each (object, attribute, value)
		begin Twitter.status(value)
		rescue Twitter::Error
			object.errors[attribute] << "No Tweet exists with given ID"
		end
	end
end