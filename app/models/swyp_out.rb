class SwypOut < ActiveRecord::Base
	belongs_to :swypIn, :foreign_key => "swyp_in_id"
	
	def status
		self.swypIn.exists? {return "paired"}
		
		timeDifference = ((DateTime.now - self.created_at)* 60 * 60 * 24).to_i
		puts "time difference #{timeDifference}"
		
		if timeDifference < 10
			return "pending"
		end
			
		return "failed"
	end
end
