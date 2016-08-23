//
//  IconFontEnum.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import Foundation

public enum DXYIconFont: Int{
    case qrcode = 59031
    case addChat = 59027
    
    var unicodeString: String{
        get{
            let scalar = UnicodeScalar(rawValue)
            return "\(scalar)"
        }
    }
}