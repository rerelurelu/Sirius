module Readers
  class PostsController < ReadersController

    def show
      @post = Post.published.friendry.find(params[:id])
    end
  end
end
