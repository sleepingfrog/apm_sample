class RapidJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Post.order('RANDOM()').first
  end
end
