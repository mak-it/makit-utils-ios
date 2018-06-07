Pod::Spec.new do |s|
    s.name             = "MakitUtils"
    s.version          = "1.0.5"
    s.summary          = "Handy extensions for iOS project."
    s.license          = '(c) SIA "MAK IT"'
    s.author           = { "MAK IT" => "makit.lv" } 
    s.source           = { :git => "https://github.com/mak-it/makit-utils-ios.git", :tag => s.version }
    s.homepage         = "https://makit.lv"
    s.platform     = :ios, '8.0'
    s.source_files = 'MakitUtils/'
    s.dependency 'RxSwift'
end
