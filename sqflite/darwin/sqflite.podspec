#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'sqflite'
  s.version          = '0.0.3'
  s.summary          = 'SQLite plugin.'
  s.description      = <<-DESC
Access SQLite database.
                       DESC
  s.homepage         = 'https://github.com/tekartik/sqflite'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Tekartik' => 'alex@tekartik.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.ios.dependency 'Flutter'
  s.tvos.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'
  s.ios.deployment_target = '12.0'
  s.tvos.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' , 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.resource_bundles = {'sqflite_darwin_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end

