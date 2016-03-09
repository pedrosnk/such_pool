
class SuchPool

	attr_reader :pool_size

	def initialize(pool_size: 5)
		@pool_size = pool_size
		@qeue = Queue.new
	end

end
