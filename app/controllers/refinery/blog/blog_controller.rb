module Refinery
  module Blog
    class BlogController < ::ApplicationController
      
      include ControllerHelper

      helper :'refinery/blog/posts'
      before_filter :find_page, :find_all_blog_categories, :find_all_blog_posts

      protected

        def find_page
          @page = Refinery::Page.find_by_link_url("/blog")
        end
    end
  end
end
