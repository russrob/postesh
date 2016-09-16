class ScheduleJob < ApplicationJob
  queue_as :default

  def perform(post)
    # Do something later
    post.display
  end
end
