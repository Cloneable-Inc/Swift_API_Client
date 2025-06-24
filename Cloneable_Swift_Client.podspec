Pod::Spec.new do |s|
  s.name = 'Cloneable_Swift_Client'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'
  s.version = '0.0.1'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v0.0.1' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'Cloneable_Swift_Client Swift SDK'
  s.source_files = 'Sources/Cloneable_Swift_Client/**/*.swift'
  s.dependency 'Alamofire', '~> 5.10'
end
