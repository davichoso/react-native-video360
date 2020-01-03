require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-video360"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-video360
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-video360"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "David" => "davichoso@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-video360.git", :tag => "#{s.version}" }
 
  s.ios.framework = 'AudioToolbox','CoreMedia','VideoToolbox'
 # dev simulator
  s.ios.vendored_frameworks = 'Frameworks/SGPlayer.framework','Frameworks/SGPlatform.framework'
 # production
 #s.ios.vendored_frameworks = 'Frameworks/arm/SGPlayer.framework','Frameworks/arm/SGPlatform.framework'
  
  s.ios.library = 'bz2.1.0','iconv.2','z.1'
  s.source_files = "ios/**/*.{h,m,swift}"
  s.resources = ['ios/*.{xib}']
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

