class RootController < ApplicationController
  def index
    # @sample = Sample.create!(name: 'world')
    render :sample
  end

  def sample
    render :sample
  end
end
