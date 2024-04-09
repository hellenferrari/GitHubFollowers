//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import UIKit

enum SFSymbols {
    static let location = "mapping.and.ellipse"
    static let repos = "folder"
    static let gists = "text.alignleft"
    static let followers = "heart"
    static let following = "person.2"
}

enum Images {
    static let ghLogo = UIImage(named: "gh-logo")
}

enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLenght = max(ScreenSize.width, ScreenSize.height)
    static let minLenght = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale
    
    static let isiPhoneSE = idiom == .phone && ScreenSize.maxLenght == 568.0
    static let isiPhone8Standard = idiom == .phone && ScreenSize.maxLenght == 667.0 && nativeScale == scale
    // ...
    
//    static func isiPhoneXAspectRatio() -> Bool {
//        return isiPhoneX || isiPhoneXsMaxAndXr
//    }
}
