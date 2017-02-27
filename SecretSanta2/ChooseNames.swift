//
//  ViewController2.swift
//  SecretSanta2
//
//  Created by Period 3 on 2/10/17.
//  Copyright © 2017 Period 3. All rights reserved.
// hi

import UIKit


class ChooseNames: UIViewController {
    var userInput1: String = ""
    var userInput2: String = ""
    var userInput3: String = ""
    var userInput4: String = ""
    var Names: [String] = ["1", "2","3","4"]
   

    
    @IBOutlet weak var displayName: UILabel!

    
    @IBAction func PickName(_ sender: AnyObject) {
        if Names.count == 0{
            displayName.text = "No more names left! :( "
        } else{
        let randomIndex = Int(arc4random()) % Names.count
        //let secretSantaName = Names[Int(arc4random_uniform(UInt32(Names.count)))]
        let secretSantaName = Names[randomIndex]
        displayName.text = "You are secret santa for \(secretSantaName) !"
        Names.remove(at: randomIndex)
        }
   }

    @IBAction func NextName(_ sender: AnyObject) {
        displayName.text = ""
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

