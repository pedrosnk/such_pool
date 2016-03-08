
describe SuchPool do
	subject(:pool) { SuchPool.new }

	it 'has default pool size' do
		expect(pool.pool_size).to eq(5)
	end
end
