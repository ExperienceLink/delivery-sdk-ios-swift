Pod::Spec.new do |spec|

  spec.name         = "ExperienceLinkSwift"
  spec.version      = "0.0.1"
  spec.summary      = "ExperienceLink is a headless CMS that unifies all of your content across all of your channels"
  spec.description  = <<-DESC
  ExperienceLink is a headless CMS tailored for product teams, developers, and marketers. By offering features such as straightforward content management, native SDKs for web and mobile platforms & cloud management, ExperienceLink makes it easy to create and distribute content across multiple channels and teams throughout your entire organization. With customizable workflows, multi-language support & modular content creation, it’s a one-stop-shop for unifying your business’s content output.
                   DESC
  spec.homepage     = "https://github.com/experiencelink/delivery-sdk-ios-swift"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author       = { "ExperienceLink" => "developer@experiencelink.com" }
  spec.social_media_url   = "https://twitter.com/LinkExperience"

  spec.source       = { :git => "https://github.com/experiencelink/delivery-sdk-ios-swift.git", :tag => "#{spec.version}" } 
  spec.vendored_frameworks = "Sources/ExperienceLink.xcframework"
  spec.platform     = :ios, "10.0"

end