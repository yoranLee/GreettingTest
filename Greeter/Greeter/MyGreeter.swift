//
//  MyGreeter.swift
//  Greeter
//
//  Created by yoranLee on 2022/6/22.
//

import Foundation

class MyGreeter {
    init(){}
    
    func GetGreetings(hour: Int) -> String {
        var greeter = ""
        if (hour >= 6 && hour < 12) { // after 6am and just before 12pm  "Good morning"
            greeter = "Good morning"
        } else if (hour >= 12 && hour < 18) {// after 12pm and just before 6pm " Good afternoon"
            greeter = "Good afternoon"
        } else if ((hour >= 18 && hour < 24) || (hour >= 0 && hour < 6)) {// after 6pm and just before 6am "Good evening"
            greeter = "Good evening"
        } else {
            greeter = "data error"
        }
        return greeter
    }
    
}
