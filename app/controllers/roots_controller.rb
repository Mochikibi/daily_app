class RootsController < ApplicationController
  def index
    if user_signed_in?
      render 'todos/index'
    end
  end
end
