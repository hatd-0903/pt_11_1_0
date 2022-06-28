# gkc_hash_code : 01D7NRNB2RGYA4ST5PTBBKDCW9
require "sidekiq"
require "sidekiq/web"
require "sidekiq/cron/web"

schedule_file = "config/schedule.yml"

Sidekiq.configure_server do |config|
  config.redis = {
    url: "redis://redis:6379"
  }
end
Sidekiq.configure_client do |config|
  config.redis = {
    url: "redis://redis:6379"
  }
end
if File.exists?(schedule_file) && Sidekiq.server?
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end
Sidekiq::Extensions.enable_delay!
