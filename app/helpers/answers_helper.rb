module AnswersHelper
	def is_check(answers, option_id)
       return false if answers.blank?
        answers.uniq.each do |answer|
          answer.options.each do |check|
          return check.id == option_id
          end
       end
    end

end
