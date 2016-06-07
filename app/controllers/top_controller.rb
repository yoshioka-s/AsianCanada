class TopController < ApplicationController
  def index
    @categories = Category.all
    @jobs = Job.limit(5)
  end
end
