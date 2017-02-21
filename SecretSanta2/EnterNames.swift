//
//  ViewController.swift
//  SecretSanta2
//
//  Created by Period 3 on 2/9/17.
//  Copyright © 2017 Period 3. All rights reserved.
//

import UIKit

class EnterNames: UIViewController {
    @IBOutlet weak var userInput1: UITextField!
    @IBOutlet weak var userInput2: UITextField!
    @IBOutlet weak var userInput3: UITextField!
    @IBOutlet weak var userInput4: UITextField!

    @IBAction func Button(_ sender: Any) {
        performSegue(withIdentifier: "Button", sender: nil)
        
            
        
    }
    
    @IBAction func unwindToEnterNames(_ segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Button"{
            let newVC = segue.destination as! ChooseNames
            newVC.userInput1 = userInput1.text
            newVC.userInput2 = userInput2.text
            newVC.userInput3 = userInput3.text
            newVC.userInput4 = userInput4.text
    }
}

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

   }


}

