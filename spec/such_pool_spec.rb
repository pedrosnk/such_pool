
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
end
