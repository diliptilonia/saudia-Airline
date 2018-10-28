//
//  page1.swift
//  saudia Airline
//
//  Created by Dilip Kumar on 27/10/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit
import ImageSlideshow

class page1: UIViewController {
    
    
    @IBOutlet weak var slideshow: ImageSlideshow!
    
    let localSource = [ImageSource(imageString: "img1")!, ImageSource(imageString: "img2")!, ImageSource(imageString: "img3")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        slideshow.slideshowInterval = 5.0
        slideshow.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        slideshow.contentScaleMode = UIView.ContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor.white
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.4470588235, green: 0.5490196078, blue: 0.568627451, alpha: 1)
        slideshow.pageIndicator = pageControl
        
        slideshow.currentPageChanged = { page in
            print("current page:", page)
        }
        slideshow.setImageInputs(localSource)
        
        
    }



}
