Pod::Spec.new do |s|

  s.name         = "Keybase"
  s.version      = "0.2.1"
  s.summary      = "Keybase"
  s.homepage     = "https://github.com/keybase/client"
  s.license      = { :type => "MIT" }
  s.author       = { "Gabriel Handford" => "gabrielh@gmail.com" }
  s.requires_arc = true

  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "8.0"
  s.source   = { :git => "https://github.com/keybase/client.git" }  #, :tag => s.version.to_s
  s.source_files = "Keybase/*.swift"

  s.dependency "MPMessagePack"
#  s.dependency "SwiftyJSON"

end
