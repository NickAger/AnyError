Pod::Spec.new do |s|
  s.name             = 'AnyError'
  s.version          = '0.1.0'
  s.summary          = 'Swift µframework - `AnyError(cause:ErrorType)` - providing type erasure for ErrorType(s)'

  s.description      = <<-DESC
Swift µframework - `AnyError(cause:ErrorType)` - providing type erasure for ErrorType(s). Originally designed to be used as the error type associated with a Future or Result - so that when composing futures with map/flatMap the error type is the same and can be propagated through the compositional chain.
                       DESC

  s.homepage         = 'http://nickager.com/blog/2016/03/07/AnyError'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nick Ager' => 'nick.ager@gmail.com' }
  s.source           = { :git => 'https://github.com/nickager/AnyError.git', :tag => s.version.to_s }
  s.social_media_url   = "http://twitter.com/NickAger"

  s.platform     = :ios, "9.0"

  s.source_files = 'AnyError/Classes/**/*'
end
