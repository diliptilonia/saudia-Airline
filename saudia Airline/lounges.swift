//
//  lounges.swift
//  saudia Airline
//
//  Created by Dilip Kumar on 27/10/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit
import ImageSlideshow


class lounges: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
    
     let localSource = [ImageSource(imageString: "img1")!, ImageSource(imageString: "img2")!, ImageSource(imageString: "img3")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        slideshow.slideshowInterval = 5.0
        slideshow.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        slideshow.contentScaleMode = UIView.ContentMode.scaleAspectFill
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        pageControl.pageIndicatorTintColor = UIColor.black
        slideshow.pageIndicator = pageControl
        
        slideshow.currentPageChanged = { page in
            print("current page:", page)
        }
            slideshow.setImageInputs(localSource)


    }
    
    @IBAction func loungesButon(_ sender: UIButton) {

    }
    

  

}
