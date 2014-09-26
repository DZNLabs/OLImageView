@version = "1.4"

Pod::Spec.new do |s|
  s.name         = "OLImageView"
  s.version      = @version
  s.summary      = "Animated GIFs implemented the right way."
  s.homepage     = "https://www.github.com/ondalabs/OLImageView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Diego Torres" => "contact@dtorres.me" }
  s.source       = { :git => "https://github.com/tinyspeck/OLImageView.git", :tag => @version }
  s.platform     = :ios, '5.0'
  s.framework  = 'ImageIO', 'MobileCoreServices', 'QuartzCore'
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Source/OLImage.{h,m}', 'Source/OLImageView.{h,m}'
  end

  s.subspec 'AFNetworking1' do |af1|
    af1.dependency 'OLImageView/Core'
    af1.dependency 'AFNetworking', '~> 1.0'
    af1.source_files = "Source/AFNetworking1/OL*.{h,m}"
  end

  s.subspec 'AFNetworking2' do |af2|
    s.platform = :ios, '6.0'
    af2.dependency 'OLImageView/Core'
    af2.dependency 'AFNetworking', '~> 2.0'
    af2.source_files = "Source/AFNetworking2/OL*.{h,m}"
  end
end
