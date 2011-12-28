class SwypOut < ActiveRecord::Base
	belongs_to :swypIn, :foreign_key => "swyp_in_id"
	after_save :set_defaults
	
	def set_defaults
		self.swypToken  = self.id.to_s
		puts "after init id #{self.id.to_s} setting token #{self.swypToken}"
		#||= self.id.to_s
		self.save
	end
	
	def status
		if self.swypIn != nil
			return "paired"
		end
		
		timeDifference = (DateTime.now.to_i - self.created_at.to_i)
		#puts "time difference #{timeDifference.to_s}"
		
		if timeDifference < 10
			return "pending"
		end
			
		return "failed"
	end
end
