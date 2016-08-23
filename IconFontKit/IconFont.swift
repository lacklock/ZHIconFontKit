//
//  IconFont.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit

class IconFont: NSObject {
    
    static private(set) var fontName = ""
    
    static func registerIconFontWithName(fontName: String){
        self.fontName = fontName
        FontBlaster.blast()
    }
    
    static func fontWithSize(size: CGFloat) -> UIFont{
        assert(fontName != "", "should invoke registerIconFontWithName")
        if let font = UIFont(name: fontName, size: size){
            return font
        }else{
            assertionFailure("找不到字体,can't find the font")
            return UIFont.systemFontOfSize(size)
        }
    }

}
