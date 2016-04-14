# Such Pool is the simplest implementation as possible of a
# Thread pool in ruby. Making possible to schedule and run your
# operation on background
class SuchPool
  VERSION = '0.1.0'.freeze

  attr_reader :pool_size

  def initialize(pool_size: 5)
    @pool_size = pool_size
    @queue = Queue.new
    @pool_size.times do
      Thread.new do
        loop do
          lambd = @queue.pop
          lambd.call
        end
      end
    end
  end

  def run_background &lambd
    @queue << lambd
  end

end
