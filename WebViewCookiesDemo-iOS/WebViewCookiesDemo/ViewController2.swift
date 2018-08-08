//
//  ViewController2.swift
//  WebViewCookiesDemo
//
//  Created by 黄文希 on 2018/7/26.
//  Copyright © 2018 Hays. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        HTTPCookieStorage.shared.cookies?.forEach({ cookie in
            print(cookie)
        })
        let urlReq = URLRequest(url: URL(string: "https://tieba.baidu.com/index.html")!)
        webView.loadRequest(urlReq)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
