Pod::Spec.new do |s|
  s.name         = "ActivityNavigationItem"
  s.version      = "1.0.5"
  s.summary      = "UINavigationItem subclass that indicates activity"
  s.description  = "Animate the right/left positions with this UINavigationItem subclass. Now a common UI practice for saving/loading information with bar button taps"
  s.homepage     = "https://github.com/longhorn499/ActivityIndicatingNavigationItem"
  s.license      = "MIT"
  s.author       = { "longhorn499" => "kevinjohnsonutx@gmail.com" }
  s.social_media_url   = "http://twitter.com/dirtydan499"
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/longhorn499/ActivityIndicatingNavigationItem.git", :tag => s.version }
  s.source_files = 'Source/*.swift'
  s.requires_arc = true
end
