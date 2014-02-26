module Blog
  class Configuration
    include ConfigurationExtensions

    attr_accessor :site_url,
                  :disqus_shortname,
                  :twitter_username,
                  :twitter_locale,
                  :facebook_like_locale,
                  :facebook_url,
                  :facebook_logo, #used in the open graph protocol to display an image when a post is liked
                  :google_plus_account_url,
                  :google_plusone_locale,
                  :linkedin_url,
                  :github_username,
                  :admin_force_ssl,
                  :posts_per_page,
                  :layout,
                  :sidebar

  end

  def self.config(&block)
    yield(Rails.application.config.blog)
  end
end
