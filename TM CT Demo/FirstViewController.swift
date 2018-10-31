//
//  FirstViewController.swift
//  TM CT Demo
//
//  Created by hayden langelier on 10/30/18.
//  Copyright © 2018 hayden langelier. All rights reserved.
//

import UIKit
import CleverTapSDK



class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        
        let profile: Dictionary<String, String> = [
            //Update pre-defined profile properties
            "Name": "Hayden Langelier",
            "Email": "hayden.langelier@gmail.com",
            //  Update custom profile properties
            "Plan type": "Silver",
            "Favorite Food": "Pizza"
        ]
        
        CleverTap.sharedInstance()?.profilePush(profile)
        createButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func createButton () {
        let button = UIButton();
        button.setTitle("CleverTap, Click Me!", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.frame = CGRect(x: 15, y: 50, width: 200, height: 100)
        button.center = self.view.center
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    
    
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        CleverTap.sharedInstance()?.recordEvent("Button Clicked")
    }
}

