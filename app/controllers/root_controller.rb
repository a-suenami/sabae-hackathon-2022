class RootController < ActionController::Base
  def index
    render plain: 'hello, world!'
  end
end
