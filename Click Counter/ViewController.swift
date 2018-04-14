//
//  ViewController.swift
//  Click Counter
//
//  Created by Kim Lyndon on 4/11/18.
//  Copyright © 2018 Kim Lyndon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label: UILabel!
    var secondLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        //This will set the label's text when the button is clicked.
        self.label = label
        
        //Second Label
        let secondLabel = UILabel()
        secondLabel.frame = CGRect.init(x: 200, y: 200, width: 60, height: 60)
        secondLabel.text = "0"
        self.view.addSubview(secondLabel)
        self.secondLabel = secondLabel
        
        //incrememnt button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        incrementButton.setTitle("👆🏼", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(incrementButton)
        
         incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect.init(x: 50, y: 250, width: 60, height: 60)
        decrementButton.setTitle("👇🏼", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(decrementButton)
        
       decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)

       }
        //Write methods that will be called when buttons are clicked.
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        self.view.backgroundColor = .purple
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        self.view.backgroundColor = .green
    }
        
    }





