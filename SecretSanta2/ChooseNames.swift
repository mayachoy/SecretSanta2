//
//  ViewController2.swift
//  SecretSanta2
//
//  Created by Period 3 on 2/10/17.
//  Copyright © 2017 Period 3. All rights reserved.
//

import UIKit


class ChooseNames: UIViewController {
    var userInput1: String!
    var userInput2: String!
    var userInput3: String!
    var userInput4: String!
    

    
    @IBOutlet weak var displayName: UILabel!
 
    @IBAction func PickName(_ sender: AnyObject) {
        var Names = [userInput1, userInput2,userInput3, userInput4]
        let secretSantaName = Names[Int(arc4random_uniform(UInt32(Names.count)))]
        displayName.text = "You are secret santa for \(secretSantaName) !"
   }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //displayName.text = userInput1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
}

