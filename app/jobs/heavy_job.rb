class HeavyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Post.all.to_a
  end
end
