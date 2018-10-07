//
//  ViewController.swift
//  HW4.4 Scroll View
//
//  Created by Татьяна on 07.10.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "image"))
        imageView.frame = CGRect(x: 0, y: 0, width: imageView.bounds.width*(UIScreen.main.bounds.height/imageView.bounds.height), height: UIScreen.main.bounds.height)

        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        scrollView.contentSize = imageView.bounds.size
        scrollView.addSubview(imageView)
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 4.0
        scrollView.delegate = self
        view.addSubview(scrollView)
        scrollView.scrollRectToVisible(CGRect(x: imageView.bounds.width/2 - UIScreen.main.bounds.width/2, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), animated: false)
        
    }
    
    

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}

