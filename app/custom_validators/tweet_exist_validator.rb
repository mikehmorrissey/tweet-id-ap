class TweetExistValidator < ActiveModel::EachValidator
	def validate_each (object, attribute, value)
		begin Twitter.status(value)
		rescue Twitter::Error
			object.errors[attribute] << "must have vailid ID"
		end
	end
end