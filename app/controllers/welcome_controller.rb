class WelcomeController < ApplicationController
  def index
    @last_five_posts = Post.last_five
  end

  def about
  end
end
