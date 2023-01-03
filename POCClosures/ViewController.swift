//
//  ViewController.swift
//  POCClosures
//
//  Created by Lucas Barbosa de Oliveira on 03/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //how to use closures simple
        let driving = {
            print("I'm driving in my car")
        }
        driving()
        //usando dados dentro das closures
        let drivinge = { (place: String) in
            print("I'm going to \(place) in my car")
        }
        drivinge("London")

        //another form to use closures
        let drivingWithReturn = { (place: String) -> String in
            return "I'm going to \(place) in my car"
        }

        let message = drivingWithReturn("London")
        print(message)

        //closure direct inside a function
        func travel(action: () -> Void) {
            print("I'm getting ready to go.")
            action()
            print("I arrived!")
        }
        travel() {
            print("I'm driving in my car")
        }
        //or because there are no parameters
//        travel {
//            print("I'm driving in my car")
//        }

        //example with parameters
//        func travel(action: (String) -> Void) {
//            print("I'm getting ready to go.")
//            action("London")
//            print("I arrived!")
//        }
//        travel { (place: String) in
//            print("I'm going to \(place) in my car")
//        }

        func travel(action: (String) -> String) {
            print("I'm getting ready to go.")
            let description = action("London")
            print(description)
            print("I arrived!")
        }
        travel { (place: String) -> String in
            return "I'm going to \(place) in my car"
        }

        //multiple parameters closures

        func travel(action: (String, Int) -> String) {
            print("I'm getting ready to go.")
            let description = action("London", 60)
            print(description)
            print("I arrived!")
        }
        travel {
            "I'm going to \($0) at \($1) miles per hour."
        }
    }


}

