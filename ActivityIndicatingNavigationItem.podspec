Pod::Spec.new do |s|
  s.name         = "ActivityIndicatingNavigationItem"
  s.version      = "1.0.2"
  s.summary      = "UINavigationItem subclass that indicates activity with UIActivityIndicator for right/left bar items"
  s.description  = "Use to easily animate the right or left bar button item with this UINavigationItem subclass. Now a common UI practice in iOS for indicating activity while saving data in edit profile screens, etc."
  s.homepage     = "https://github.com/longhorn499/ActivityIndicatingNavigationItem"
  s.license      = "MIT"
  s.author       = { "longhorn499" => "kevinjohnsonutx@gmail.com" }
  s.social_media_url   = "http://twitter.com/dirtydan499"
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/longhorn499/ActivityIndicatingNavigationItem.git", :tag => s.version }
  s.source_files = 'Source/*.swift'
  s.requires_arc = true
end
