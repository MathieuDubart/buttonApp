//
//  ViewController.swift
//  button
//
//  Created by Mathieu DUBART on 28/03/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var counter: Int = 0
    var incrementBy: Int = 1
    var plusOneCost: Int = 100
    var multiplyBy: Int = 1000
    
    //increment counter with "Button" and display counter's value
    
    @IBOutlet weak var counterViewer: UILabel!

    @IBAction func primaryButton() {
        counter += 1
        
        counterViewer.text = "\(counter)"
        
    }
    
    @IBOutlet weak var plusOneLabel: UILabel!
    
    @IBOutlet weak var multiplyByLabel: UILabel!
    
    
    func checkIfEnoughForPlusOne(counter: Int) {
        if (self.plusOneCost == counter) {
            self.counter = counter - self.plusOneCost
            self.plusOneCost = self.plusOneCost*2
        }
    }
    
    func checkIfEnoughForMultiplyBy(counter: Int) {
        if (self.multiplyBy == counter) {
            self.counter = counter - self.multiplyBy
            self.multiplyBy = self.multiplyBy*2
        }
    }
    
    @IBAction func plusOneClick() {
        checkIfEnoughForPlusOne(counter: counter)
        plusOneLabel.text = "Cost: \(plusOneCost)"
    }
    
    @IBAction func multiplyByClick() {
        checkIfEnoughForMultiplyBy(counter: counter)
        multiplyByLabel.text = "Cost: \(multiplyBy)"
    }
    
    //progress views
    
    @IBOutlet weak var progressViewPlusOne: UIProgressView!
    
    
    @IBAction func progressingViewPlusOne(_ sender: Any) {
        
    }
}
