class PostsController < ApplicationController
    layout 'post'
    def index
        @posts = Post.all
        render layout: 'application'
    end
end
