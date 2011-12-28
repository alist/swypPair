class SwypOut < ActiveRecord::Base
	belongs_to :swypIn
	
	def status
		if self.swypIn != nil
			puts "paired"
			return "paired"
		end
		
		dayDifference = (DateTime.now - self.created_at)
		timeDifference = (dayDifference * 60 * 60 * 24)
		puts "time difference #{timeDifference.to_i}"
		
		if timeDifference < 10
			return "pending"
		end
			
		return "failed"
	end
end
