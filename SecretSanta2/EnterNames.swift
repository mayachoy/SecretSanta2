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
    
    var namesToPass = [String]()

    @IBAction func Button(_ sender: Any) {
        
      
        
            
        
    }
    
    @IBAction func unwindToEnterNames(_ segue: UIStoryboardSegue) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        namesToPass = []
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Button"{
            let newVC = segue.destination as! ChooseNames
            namesToPass.append(userInput1.text!)
            namesToPass.append(userInput2.text!)
            namesToPass.append(userInput3.text!)
            namesToPass.append(userInput4.text!)
            newVC.namesList = namesToPass
    }
}

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

   }


}

