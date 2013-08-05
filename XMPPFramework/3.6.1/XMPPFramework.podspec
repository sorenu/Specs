Pod::Spec.new do |s|
  s.name         = "XMPPFramework"
  s.version      = "3.6.1"
  s.summary      = "An XMPP Framework in Objective-C for Mac and iOS."
  s.homepage     = "https://github.com/robbiehanson/XMPPFramework"

  s.license = { :type => 'MIT', :text => <<-LICENSE
    Copyright (c) 2012, Robbie Hanson
    All rights reserved.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    - Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.author       = { "Robbie Hanson" => "email@address.com" }
  s.source       = { :git => "https://github.com/robbiehanson/XMPPFramework.git", :tag => "3.6.1" }

  s.ios.deployment_target = '5.0'

  s.source_files = 'Vendor/CocoaLumberjack', 'Vendor/CocoaAsyncSocket', 'Vendor/KissXML/**/*.{h,m}', 'Vendor/libidn/idn-int.h', 'Vendor/libidn/stringprep.h', 'Authentication', 'Categories', 'Core', 'Utilities'

  s.public_header_files = 'XMPP.h'

  s.ios.frameworks = 'CFNetwork', 'Security'

  s.libraries = 'libxml2', 'libresolv'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.requires_arc = true

  s.preserve_paths = 'Vendor/libidn/libidn.a'

end
