Pod::Spec.new do |s|

    s.name         = "EightySixPercent"
    s.version      = "1.0.1"
    s.summary      = "86% SDK."
    s.description  = <<-DESC
    The EightySixPercent SDK
                     DESC

    s.homepage     = "https://www.86percent.co"
    s.license      = { :type => "MIT", :file => "license" }
    s.author       = { "Lunabot SAS" => "lunabot@86percent.co" }
    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'EightySixPercent.framework'
    s.source        = { :http => "https://github.com/86percent/EightySixPercent_iOS/raw/master/EightySixPercent-1.0.1.zip" }
    s.exclude_files = "Classes/Exclude"
    s.swift_version = "4.2"

    s.dependency 'AFDateHelper'
    s.dependency 'Gifu'
    s.dependency 'Pulley'
    s.dependency 'LGButton'
    s.dependency 'Hue'
    s.dependency 'JustLog'
    s.dependency 'Moya'
    s.dependency 'Bolts-Swift'
    s.dependency 'Nuke'
    s.dependency 'lottie-ios'
    s.dependency 'Realm'
    s.dependency 'RealmSwift'
    s.dependency 'PKHUD'
    s.dependency 'BABFrameObservingInputAccessoryView'
    s.dependency 'Toucan'
        
end
