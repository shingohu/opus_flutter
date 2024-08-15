#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint opus_flutter_macos.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'opus_flutter_macos'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '14.0'

  s.vendored_libraries = 'libopus.a'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-force_load $(PODS_TARGET_SRCROOT)/libopus.a" }
  s.swift_version = '5.0'
end
