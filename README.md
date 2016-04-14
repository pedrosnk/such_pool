Such Pool
===

Such pool is a simple thread pool that can be used to
execute simultanesly processing in parallel


Example:

```ruby
  pool = SuchPool.new pool_size: 2

  2.times do
    pool.run_background do
      sleep(2)
      puts 'run after 2 seconds'
    end
  end
```

Is this gem prodution safe?
===

Sort anwser *No*
