def profile block_description, &block
  profiling = true
  if !profiling
    block.call
  else
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end
