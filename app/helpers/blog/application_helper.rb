module Blog
  module ApplicationHelper
    include Blog::HtmlHelper
    include Blog::TagsHelper

    def blog_admin_form_for(object, options = {}, &block)
      options[:builder] = BlogAdminFormBuilder
      form_for(object, options, &block)
    end

    def blog_accurate_title
      content_for?(:title) ? ((content_for :title) + " | #{Blog::Config.site_name}") : Blog::Config.site_name
    end

    def rss_head_link
      tag("link", href: feed_url, rel: "alternate", title: "RSS", type: "application/rss+xml")
    end

    def absolute_image_url(url)
      return url if url.starts_with? "http"
      request.protocol + request.host + url
    end
  end
end
