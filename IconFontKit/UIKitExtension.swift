//
//  UILabelExtension.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit

extension UIButton{
    
    func setTitleIconFont(iconfont: DXYIconFont, size: CGFloat) {
        titleLabel?.font = IconFont.fontWithSize(size)
        setTitle(iconfont.unicodeString, forState: .Normal)
    }
    
}

extension UILabel{
    
    func setIconFont(iconfont: DXYIconFont, size: CGFloat){
        font = IconFont.fontWithSize(size)
        text = iconfont.unicodeString
    } 
}