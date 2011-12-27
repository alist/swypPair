class SwypOut < ActiveRecord::Base
	belongs_to :swypIn
	
	def status
		self.swypIn? return "paired"
		
		timeDifference = ((DateTime.now - self.created_at)* 60 * 60 * 24).to_i
		puts "time difference #{timeDifference}"
		
		timeDifference < 10? return "pending"
			
		return "failed"
	end
end
