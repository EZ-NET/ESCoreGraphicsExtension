Pod::Spec.new do |s|

s.name         = "ESCoreGraphicsExtension"
s.version      = "0.1.3"
s.summary      = "EZ-NET Extension Swift Module for CoreGraphics."

s.description  = <<-DESC
It is a swift module that implements basic features.
DESC

s.homepage     = "https://github.com/EZ-NET/ESCoreGraphicsExtension"

s.license      = { :type => "MIT" }

s.author             = { "Tomohiro Kumagai" => "http://ez-net.jp/profile/" }
s.social_media_url   = "http://twitter.com/es_kumagai"

s.ios.deployment_target = "8.0"
s.osx.deployment_target = "10.9"

s.source       = { :git => "https://github.com/EZ-NET/ESCoreGraphicsExtension.git", :tag => s.version }
s.source_files  = "ESCoreGraphicsExtension/**/*.swift"
s.dependency  "Swim", "~> 1.4.0"

end
