//
//  UILabelExtension.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit

public extension UIButton{
    
    func setTitleIconFont(iconfont: UnicodeString, size: CGFloat) {
        titleLabel?.font = IconFont.fontWithSize(size)
        setTitle(iconfont.unicodeString, forState: .Normal)
    }
    
}

public extension UILabel{
    
    func setIconFont(iconfont: UnicodeString, size: CGFloat){
        font = IconFont.fontWithSize(size)
        text = iconfont.unicodeString
    } 
}

public extension UIImage{
    
    static func iconForIconFont(iconfont: UnicodeString, size: CGFloat, color: UIColor, backgroundColor: UIColor = UIColor.clearColor(),iconInset: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) -> UIImage {
        let height = size - iconInset.top - iconInset.bottom
        let width = size - iconInset.left - iconInset.right
        let renderSize = min(height, width)
        let scale = UIScreen.mainScreen().scale
        let realSize = renderSize * scale
        let imageSize = size * scale
        let font = IconFont.fontWithSize(realSize)
        
        UIGraphicsBeginImageContext(CGSize(width: imageSize, height: imageSize))
        if backgroundColor != UIColor.clearColor() {
            backgroundColor.set()
            UIRectFill(CGRect(x: 0, y: 0, width: imageSize, height: imageSize))
        }
        
        let point = CGPoint(x: iconInset.left * scale, y: iconInset.top * scale)
        (iconfont.unicodeString as NSString).drawAtPoint(point, withAttributes: [NSFontAttributeName:font,     NSForegroundColorAttributeName :color])
        let image = UIImage(CGImage: UIGraphicsGetImageFromCurrentImageContext().CGImage!, scale: scale, orientation: .Up)
        UIGraphicsEndImageContext()
        return image
    }
    
}