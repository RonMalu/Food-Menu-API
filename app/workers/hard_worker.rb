class HardWorker
include Sidekiq::Worker

  def perform(count)
    sleep(count)
    puts "Email confirmation sent..."
  end
end