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
        let myGreeter =  MyGreeter()
        print(myGreeter.GetGreetings(hour: getDateHour()))
    }

    //获取24小时制的hour
    func getDateHour() -> Int {
        return Calendar.current.component(.hour, from: Date.now)
    }

}

