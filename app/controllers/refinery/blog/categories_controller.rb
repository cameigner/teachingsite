module Refinery
  module Blog
    class CategoriesController < BlogController
      
      def show
        @category = Refinery::Blog::Category.find(params[:id])
        @posts = @category.posts.live.includes(:comments, :categories).page(params[:page])
        @blog_posts = Refinery::Blog::Post.live
      end

    end
  end
end
