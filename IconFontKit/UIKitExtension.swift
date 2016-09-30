//
//  UILabelExtension.swift
//  IconFontDemo
//
//  Created by 卓同学 on 16/8/24.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func setTitle(iconFont: UnicodeString, size: CGFloat) {
        titleLabel?.font = IconFont.font(withSize: size)
        setTitle(iconFont.unicodeString, for: .normal)
    }
    
}

public extension UILabel{
    
    func set(iconfont: UnicodeString, size: CGFloat){
        font = IconFont.font(withSize: size)
        text = iconfont.unicodeString
    } 
}

public extension UIImage{
    
    static func icon(forIconFont iconfont: UnicodeString, size: CGFloat, color: UIColor, backgroundColor: UIColor = UIColor.clear,iconInset: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) -> UIImage {
        let height = size - iconInset.top - iconInset.bottom
        let width = size - iconInset.left - iconInset.right
        let renderSize = min(height, width)
        let scale = UIScreen.main.scale
        let realSize = renderSize * scale
        let imageSize = size * scale
        let font = IconFont.font(withSize: realSize)
        
        UIGraphicsBeginImageContext(CGSize(width: imageSize, height: imageSize))
        if backgroundColor != UIColor.clear {
            backgroundColor.set()
            UIRectFill(CGRect(x: 0, y: 0, width: imageSize, height: imageSize))
        }
        
        let point = CGPoint(x: iconInset.left * scale, y: iconInset.top * scale)
        (iconfont.unicodeString as NSString).draw(at: point, withAttributes: [NSFontAttributeName:font,     NSForegroundColorAttributeName :color])
        let image = UIImage(cgImage: UIGraphicsGetImageFromCurrentImageContext()!.cgImage!, scale: scale, orientation: .up)
        UIGraphicsEndImageContext()
        return image
    }
    
}
