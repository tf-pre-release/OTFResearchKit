Pod::Spec.new do |s|
  s.name         = 'OTFResearchKit'
  s.version      = '0.0.7'
  s.summary      = 'OTFResearchKit is an open source software framework that makes it easy to create apps for medical research or for other research projects.'
  s.homepage     = 'https://github.com/TheraForge/OTFResearchKit'
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { 'researchkit.org' => 'http://researchkit.org' }
  s.source       = { :git => 'https://github.com/HippocratesTech/OTFResearchKit', :tag => s.version.to_s }
 # s.source       = { :git => './', :tag => s.version.to_s }
  s.resources    = 'OTFResearchKit/**/*.{fsh,vsh}', 'OTFResearchKit/Animations/**/*.m4v', 'OTFResearchKit/Artwork.xcassets', 'OTFResearchKit/Localized/*.lproj'
  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.swift_version = '5.0'
  s.platform     = :ios, '11.0'
  s.default_subspec = 'Care'

  s.subspec 'Care' do |ss|
    ss.name = 'Care'
    ss.source_files = 'OTFResearchKit/**/*.{h,m,swift}'
    ss.public_header_files = `./scripts/find_headers.rb --public`.split("\n")
    ss.private_header_files = `./scripts/find_headers.rb --private`.split("\n")
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'CARE=1'
    }
    ss.platform     = :ios, '11.0'
  end

  s.subspec 'Health' do |ss|
    ss.name = 'Health'
    ss.source_files = 'OTFResearchKit/**/*.{h,m,swift}'
    ss.public_header_files = `./scripts/find_headers.rb --public`.split("\n")
    ss.private_header_files = `./scripts/find_headers.rb --private`.split("\n")
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'HEALTH=1'
    }
    ss.platform     = :ios, '11.0'
  end

  s.subspec 'CareHealth' do |ss|
    ss.name = 'CareHealth'
    ss.source_files = 'OTFResearchKit/**/*.{h,m,swift}'
    ss.public_header_files = `./scripts/find_headers.rb --public`.split("\n")
    ss.private_header_files = `./scripts/find_headers.rb --private`.split("\n")
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => ['HEALTH=1','CARE=1']
    }
    ss.platform     = :ios, '11.0'
  end


end
