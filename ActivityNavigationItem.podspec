Pod::Spec.new do |s|
  s.name         = "ActivityNavigationItem"
  s.version      = "1.1.1"
  s.summary      = "Indicate activity on UINavigationItem"
  s.description  = "Animate the right/left UINavigationItem bar button items. Now a common UI practice for saving/loading information with bar button taps"
  s.homepage     = "https://github.com/longhorn499/ActivityNavigationItem"
  s.license      = "MIT"
  s.author       = { "longhorn499" => "kevinjohnsonutx@gmail.com" }
  s.social_media_url   = "http://twitter.com/dirtydan499"
  s.platform     = :ios, "13.0"
  s.swift_version = "5.0"
  s.source       = { :git => "https://github.com/longhorn499/ActivityNavigationItem.git", :tag => s.version }
  s.source_files = 'Source/*.swift'
  s.requires_arc = true
end
