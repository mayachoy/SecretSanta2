//
//  ViewController2.swift
//  SecretSanta2
//
//  Created by Period 3 on 2/10/17.
//  Copyright © 2017 Period 3. All rights reserved.
// hi

import UIKit


class ChooseNames: UIViewController {
    var namesList = [String]()
    
    @IBOutlet weak var displayName: UILabel!
    @IBAction func PickName(_ sender: AnyObject) {

        if namesList.count == 0{
            displayName.text = "No more names left! :( "
        } else{
        let randomIndex = Int(arc4random()) % namesList.count
        let secretSantaName = namesList[randomIndex]
        displayName.text = "You are secret santa for \(secretSantaName) !"
        namesList.remove(at: randomIndex)
        }
   }

    @IBAction func NextName(_ sender: AnyObject) {
        displayName.text = ""
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

