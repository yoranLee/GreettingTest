//
//  ViewController.swift
//  Greeter
//
//  Created by yoranLee on 2022/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MyGreeter().getGreetings()
    }

}

