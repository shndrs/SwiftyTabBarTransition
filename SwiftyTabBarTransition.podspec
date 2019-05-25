

Pod::Spec.new do |spec|

  spec.name         = "SwiftyTabBarTransition"
  spec.version      = "1.0.1"
  spec.summary      = "An UITabBarController transition animation with a lot of options for animation"

  spec.description  = <<-DESC
    this framework help you to give a better user exprience to your user with smooth transition between TabBarItem
                   DESC

  spec.homepage     = "http://github.com/shndrs/SwiftyTabBarTransition"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "shndrs" => "sahandraeisi1994@gmail.com" }
  # Or just: spec.author    = ""
  # spec.authors            = { "" => "sahandraeisi1994@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/"


  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

    spec.ios.deployment_target = "9.3"
    spec.swift_version = "4.2"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"



  spec.source       = { :git => "https://github.com/shndrs/SwiftyTabBarTransition.git", :tag => "#{spec.version}" }
  spec.source_files = "SwiftyTabBarTransition/**/*.{h,m,swift}"

  # spec.public_header_files = "Classes/**/*.h"


  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
