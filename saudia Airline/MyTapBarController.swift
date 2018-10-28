//
//  MyTapBarController.swift
//  saudia Airline
//
//  Created by Dilip Kumar on 27/10/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
class MyTabBarController: UITabBarController, UINavigationControllerDelegate {

    
    override func viewDidLoad() {
        
        
        let itemIndex = 2
        let bgColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        
        let itemWidth = tabBar.frame.width / CGFloat(tabBar.items!.count)
        let bgView = UIView(frame: CGRect(itemWidth * CGFloat(itemIndex), 0, itemWidth, tabBar.frame.height))
        bgView.backgroundColor = bgColor
        tabBar.insertSubview(bgView, at: 0)
       
//
//        let numberOfItems = CGFloat(tabBar.items!.count)
//        UITabBar.appearance().selectionIndicatorImage = UIImage().makeImageWithColorAndSize(color: UIColor(red: 255/255, green: 237/255, blue: 0/255, alpha: 1.0), size: CGSize(width:tabBar.frame.width/numberOfItems,height:tabBar.frame.height))

    }
}
extension CGRect{
    init(_ x:CGFloat,_ y:CGFloat,_ width:CGFloat,_ height:CGFloat) {
        self.init(x:x,y:y,width:width,height:height)
    }
    
}
extension UIImage {
    func makeImageWithColorAndSize(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(x:0,y:0,width:size.width,height:size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
