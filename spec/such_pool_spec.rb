
describe SuchPool do
  subject(:pool) { SuchPool.new }

  describe '#initialize' do
    subject(:pool_ten) { SuchPool.new pool_size: 10 }
    it 'has default pool size' do
      expect(pool.pool_size).to eq(5)
    end

    it 'defined other pool size' do
      expect(pool_ten.pool_size).to eq(10)
    end
  end

  describe '#run_background' do

    it 'runs operation on background' do
      result = :not_ok
      pool.run_background do
        result = :ok
      end
      loop do
        break if result == :ok
      end

      expect(result).to eq(:ok)
    end

  end
end
