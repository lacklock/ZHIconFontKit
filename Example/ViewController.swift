//
//  ViewController.swift
//  Example
//
//  Created by 卓同学 on 16/8/25.
//  Copyright © 2016年 lacklock@gmail.com. All rights reserved.
//

import UIKit
import IconFontKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IconFont.registerIconFont(withFontName: "iconfont")
        
        label.set(iconfont: DXYIconFont.addChat, size: 40)
        button.setTitle(iconFont: DXYIconFont.qrcode, size: 50)
        imageView.image = UIImage.icon(forIconFont: DXYIconFont.safari, size: 100, color: UIColor.purple, backgroundColor: UIColor.gray, iconInset: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
    }
    
    
}

