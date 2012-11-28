Refinery::PagesController.class_eval do
  
    before_filter :find_all_blog_posts, :only => [:show]
    protected
    
      def find_all_blog_posts
        @blog_posts == Refinery::Blog::Post.live
      end

  end