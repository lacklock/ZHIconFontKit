//
//  IconFont.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit

public class IconFont: NSObject {
    
    public static private(set) var fontName = ""
    
    public static func registerIconFont(withFontName fontName: String, shouldLoadFont: Bool = true) {
        self.fontName = fontName
        if shouldLoadFont {
            FontBlaster.blast()
        }
    }
    
    public static func font(withSize size: CGFloat) -> UIFont {
        assert(fontName != "", "should invoke registerIconFontWithName")
        if let font = UIFont(name: fontName, size: size){
            return font
        }else{
            assertionFailure("找不到字体,can't find the font")
            return UIFont.systemFont(ofSize: size)
        }
    }

}
