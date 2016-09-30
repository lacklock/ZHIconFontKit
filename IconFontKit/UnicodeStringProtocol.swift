//
//  UnicodeStringProtocol.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import Foundation

public protocol UnicodeString {
    var unicodeString: String { get }
}

public extension UnicodeString where Self: RawRepresentable, Self.RawValue == Int {
    var unicodeString: String {
        get{
            let scalar = UnicodeScalar(rawValue)!
            return "\(scalar)"
        }
    }
}
