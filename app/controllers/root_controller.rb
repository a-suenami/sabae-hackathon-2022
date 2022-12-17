class RootController < ActionController::Base
  def index
    sample = Sample.create!(name: 'world')
    render plain: "hello, #{sample.name}!"
  end
end
