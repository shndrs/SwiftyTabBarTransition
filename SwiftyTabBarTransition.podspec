

Pod::Spec.new do |spec|

  spec.name         = "SwiftyTabBarTransition"
  spec.version      = "1.0.2"
  spec.summary      = "An UITabBarController transition animation with a lot of options for animation"

  spec.description  = <<-DESC
    this framework help you to give a better user exprience to your user with smooth transition between TabBarItem
                   DESC

  spec.homepage     = "http://github.com/shndrs/SwiftyTabBarTransition"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "shndrs" => "sahandraeisi1994@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/shndrs/"

  spec.ios.deployment_target = "9.3"
  spec.swift_version = "4.2"


  spec.source       = { :git => "https://github.com/shndrs/SwiftyTabBarTransition.git", :tag => "#{spec.version}" }
  spec.source_files = "SwiftyTabBarTransition/**/*.{h,m,swift}"

  # spec.public_header_files = "Classes/**/*.h"


  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

end
