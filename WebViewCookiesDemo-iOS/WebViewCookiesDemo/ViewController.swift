//
//  ViewController.swift
//  WebViewCookiesDemo
//
//  Created by 黄文希 on 2018/7/26.
//  Copyright © 2018 Hays. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        HTTPCookieStorage.shared.cookies?.forEach({ cookie in
//            print(cookie)
//        })
        print("test by Hays cookies : \(HTTPCookieStorage.shared.cookies(for: URL(string: "https://www.baidu.com")!))")
//        HTTPCookieStorage.shared.deleteCookie((HTTPCookieStorage.shared.cookies(for: URL(string: "https://www.baidu.com")!)?.first)!)
//        HTTPCookieStorage.shared.cookies?.forEach({ cookie in
//            print(cookie)
//        })
//        let dict: [HTTPCookiePropertyKey: Any] = [
//            HTTPCookiePropertyKey.name: "hays_cookie_name",
//            HTTPCookiePropertyKey.value: "hays' cookie value",
//            HTTPCookiePropertyKey.domain: ".baidu.com",
//            HTTPCookiePropertyKey.path: "/",
//            HTTPCookiePropertyKey.expires: Date(timeIntervalSinceNow: 3600*24*2),
//            HTTPCookiePropertyKey.version: "0"
//        ]
//        let cookie = HTTPCookie(properties: dict)
//        HTTPCookieStorage.shared.setCookie(cookie!)
        print("test by Hays ............. ")
        let urlReq = URLRequest(url: URL(string: "https://www.baidu.com")!)
        webView.loadRequest(urlReq)
        HTTPCookieStorage.shared.cookies?.forEach({ cookie in
            print(cookie)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

