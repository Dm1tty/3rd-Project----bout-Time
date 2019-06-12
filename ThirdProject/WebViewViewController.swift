//
//  WebViewViewController.swift
//  ThirdProject
//
//  Created by Dzmitry Matsiulka on 6/11/19.
//  Copyright © 2019 Dzmitry S. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController, WKUIDelegate {
    
    var urlToLoad : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let webView = WKWebView(frame: CGRect(x: 0, y: 90, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(webView)
        let url = URL(string: urlToLoad!)
        webView.load(URLRequest(url: url!))

   

    }
    

  
  

    
}
