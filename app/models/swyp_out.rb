class SwypOut < ActiveRecord::Base
	belongs_to :swypIn
	
	def status
		if self.swypIn != nil
			puts "paired"
			return "paired"
		end
		
		timeDifference = (DateTime.now.to_i - self.created_at.to_i)
		puts "time difference #{timeDifference.to_s}"
		
		if timeDifference < 10
			return "pending"
		end
			
		return "failed"
	end
end
