//
//  WebViewController.swift
//  Testinghtml
//
//  Created by ahmad shiddiq on 01/10/19.
//  Copyright © 2019 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebViewController: UIViewController{
    @IBOutlet weak var contentView: WKWebView!
    
    let headerData = "Argumentasi Dimensi"
    let bodyData = "Yuhu"
    let footerData = "Ins"
    override func viewDidLoad() {
        super.viewDidLoad()
        modifContent(head: headerData, body: bodyData, footer: footerData)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

private func modifContent(head:String , body:String, footer:String){
    "<head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'><meta name='theme-color' content='#000000'><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' /><meta name='theme-color' content='#5A9C14'><meta name='msapplication-navbutton-color' content='#5A9C14'><meta name='apple-mobile-web-app-status-bar-style' content='#5A9C14'><link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'><style>:root,* {font-family: 'Poppins', Poppins;font-size: 14px;color: rgb(114, 114, 114);text-align: justify;-webkit-user-select: none;user-select: none;}</style></head><body><h2>\(head)</h2><div>\(body)</div><div><a href='#'>\(footer)</a></div></body>"
}
