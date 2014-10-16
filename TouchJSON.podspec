
Pod::Spec.new do |s|
  s.name             = "TouchJSON"
  s.version          = "1.0.0"
  s.summary          = "TouchJSON for non-ARC"
  s.description      = <<-DESC
                       It is a folk for TouchJSON with no-ARC support, just used with BaiduMobStat wrote by Baidu.
                       DESC
  s.homepage         = "https://github.com/TouchCode/TouchJSON"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "red3" => "red3@red.com" }
  
  s.source           = { :git => "https://github.com/red3/TouchJSON.git", :branch => "feature/MyNonARC", :tag => "v#{s.version.to_s}" }
  # s.social_media_url = 'https://twitter.com/NAME'

  s.platform     = :ios, '6.0'
  # s.ios.deployment_target = '6.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = false

  s.source_files = 'Source/*'
  
  s.subspec 'Experimental' do |ss|
  	ss.source_files = 'Source/Experimental/*'
  end
  
  s.subspec 'Extensions' do |ss|
  	ss.source_files = 'Source/Extensions/*'
  end 
  
  s.subspec 'JSON' do |ss|
  	ss.source_files = 'Source/JSON/*'
  end 
  
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
