//
//  ViewController.swift
//  Testinghtml
//
//  Created by ahmad shiddiq on 01/10/19.
//  Copyright © 2019 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    let headerData = "Termos adalah sebuah botol yg diberi dinding dalam rangkap yang dirancang membentuk seperti kaca dengan bahan mengkilap yang dapat menyimpan cairan agar tetap memiliki suhu seperti semula. Termos biasa digunakan untuk menyimpan air panas. Dengan dinding dalam termos yang dirancang seperti kaca, maka kalor yang terdapat pada air panas tersebut tidak bisa berpindah dengan cepat. Dengan kata lain, radiasi panas yang dipancarkan oleh air mendidih ini tadi dapat ditahan oleh dinding dalam termos yang terbuat dari bahan mengkilap ini. Dengan demikian, air panas tersebut dapat bertahan dalam termos ini dalam beberapa hari. Termos pertama kali diciptakan tahun 1902 oleh James Dewar. Pada saat itu, James Dewar menghadapi masalah menyangkut minuman untuk bayinya. Ia ingin bayinya selalu meminum susu yang masih hangat. Akan tetapi, mempertahankan susu agar hangat dalam waktu lama merupakan masalah sulit pada waktu itu ..... "
    
    
    let kata = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(modifContent(head: headerData), baseURL: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

private func modifContent(head:String) -> String{
    return  "<head><meta charset='utf-8'><meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'><meta name='theme-color' content='#000000'><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' /><meta name='theme-color' content='#5A9C14'><meta name='msapplication-navbutton-color' content='#5A9C14'><meta name='apple-mobile-web-app-status-bar-style' content='#5A9C14'><link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'><style>:root,* {font-family: 'Poppins', Poppins;font-size: 16px;color: rgb(114, 114, 114);text-align: justify;-webkit-user-select: none;user-select: none;}h1{font-size: 24px;color: black; text-align:center} .tolink{color:blue;}</style></head><body><div><h1>Termos</h1></div><div>\(head)</div><div><a>Pingin tahu lebih ?? </a><blink><a class='tolink' href='https://id.wikipedia.org/wiki/Termos'>Klik disini</a></blink></div></br></br><div><marquee behavior='alternate' style='font-size:20px; color:#cc0000;' bgcolor='yellow'> ~ Inside &#128540;f Art ~ </marquee></div></body>"
}
