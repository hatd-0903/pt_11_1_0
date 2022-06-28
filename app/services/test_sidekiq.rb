# gkc_hash_code : 01D7NRNB2RGYA4ST5PTBBKDCW9

class TestSidekiq
  include Sidekiq::Worker

  def perform
    check_sidekiq
  end

  def check_sidekiq
    workers = Sidekiq::Workers.new.select do |worker|
      worker
    end
  end
end
