Pod::Spec.new do |s|
  s.name         = "XMPPFramework"
  s.version      = "3.6.1"
  s.summary      = "An XMPP Framework in Objective-C for Mac and iOS"
  s.homepage     = "https://github.com/robbiehanson/XMPPFramework"

  s.license      = 'MIT (example)'

  s.author       = { "Robbie Hanson" => "email@address.com" }
  s.source       = { :git => "https://github.com/robbiehanson/XMPPFramework.git", :tag => "3.6.1" }

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'Authentication', 'Categories', 'Core', 'Extension', 'Utilities', 'Vendor'

  s.public_header_files = 'XMPP.h'

  s.libraries = 'libidn'
end
