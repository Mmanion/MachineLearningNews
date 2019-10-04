//
//  ArticleWebViewController.swift
//  MachineLearningNews
//
//  Created by Matthew Manion on 10/3/19.
//  Copyright © 2019 Matthew Manion. All rights reserved.
//

import UIKit
import WebKit

class ArticleWebViewController: UIViewController {
    
    var article = Article()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: article.url) {
            webView.load(URLRequest(url: url))
        }
    }
    
    
    @IBOutlet weak var webView: WKWebView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
