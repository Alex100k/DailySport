//
//  ViewController.swift
//  DailySport
//
//  Created by Simon Fournier on 14/11/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        SoupManager.scrap(URL(string: "https://www.100pompes.com/objectif-100-pompes/46-50-pompes")!)
        SoupManager.scrap(URL(string: "https://hundredpushups.com/week6.html")!)
    }
}

