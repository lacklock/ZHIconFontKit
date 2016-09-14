# ZHIconFontKit
![Language](https://img.shields.io/badge/language-swift%202.3-orange.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/ZHIconFontKit.svg?style=flat)](http://cocoadocs.org/docsets/ZHIconFontKit/)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![License](https://img.shields.io/github/license/mashape/apistatus.svg)

Using icon font in Swift

# Requirements
iOS 8.0+

# Installation

### CocoaPods
To integrate ZHIconFontKit into your Xcode project using CocoaPods, specify it in your Podfile:

``` ruby
  use_frameworks!

  pod ‘ZHIconFontKit’

```
if you are using swift 2.2:
``` ruby
   pod 'ZHIconFontKit',:git => 'https://github.com/lacklock/ZHIconFontKit.git',:branch => '2.2'
```
### Manual
Just copy the files which under IconFontKit folder to your project

# Thaks
[FontBlaster](https://github.com/ArtSabintsev/FontBlaster)

[IconFont](https://github.com/JohnWong/IconFont)

#Usage
1.make sure you font has been copy to bundle,check Build Phases:
![Copy Bundle Resources](https://github.com/lacklock/ZHIconFontKit/blob/master/Resource/copyBundle.png)

2.after <code>import ZHIconFontKit</code>,register icon font:
``` swift
IconFont.registerIconFontWithName("iconfont")
```

3.create a <code>enum</code> rawValue type is Int and conform to <code>UnicodeString</code> protocol:
``` swift
 enum DXYIconFont: Int,UnicodeString{
    case xxx = 59031
    case yyy = 59027
}
```

### UILabel
``` swift
label.setIconFont(DXYIconFont.xxx, size: 40)
```
### UIButton
``` swift
button.setTitleIconFont(DXYIconFont.yyy, size: 50)
```
### UIImage
``` swift
imageView.image = UIImage.iconForIconFont(DXYIconFont.safari, size: 100, color: UIColor.purpleColor(), backgroundColor: UIColor.grayColor(), iconInset: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))

```
### Xib
If you are using in xib,just the same as using a cutom font.After set font as custom font,then paste icon from FontBook in atturibute pannel
![FontBook](https://github.com/lacklock/ZHIconFontKit/blob/master/Resource/fontbook.png)

# SNS
Weibo : [@没故事的卓同学](http://weibo.com/1926303682)
