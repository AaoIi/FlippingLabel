#
#  Be sure to run `pod spec lint FlashingLabel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "FlashingLabel"
  spec.version      = "1.0.0"
  spec.summary      = "A blinking / flashing or switching animated label, changes text for time intervals - Swift"

  spec.description  = "FlashingLabel is animated label to switch between two text/attributed text according to time intervals."
  spec.homepage     = "https://github.com/AaoIi/FlashingLabel"
  spec.screenshots  = 'https://camo.githubusercontent.com/446aa2e994eebf2723f7e48fe707836002ef82cd/68747470733a2f2f6c68362e676f6f676c6575736572636f6e74656e742e636f6d2f59387573577463677a5f33486c6379385459764b4c65665f387467674230574b335736586c44454b655f6e436538736b6572597179413d773337332d683634322d702d62312d6330783030393939393939'

  spec.license      = "MIT"

  spec.author             = "Saad Albasha"
  # Or just: spec.author    = "Saad Albasha"

  # spec.platform     = :ios
  spec.platform     = :ios, "8.0"
  spec.swift_version = '5.0'

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/AaoIi/FlashingLabel.git", :tag => "1.0.0" }

  spec.source_files  = 'FlashingLabel/**/*.swift','FlashingLabel/**/*.h'


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
