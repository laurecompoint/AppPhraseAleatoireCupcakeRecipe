//
//  ViewController.swift
//  CupcakeApp
//
//  Created by Laure Compoint on 06/10/2019.
//  Copyright © 2019 Laure Compoint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let subjects = ["Cupcake", "Muffin"]
    let verbsAndObjects = ["aux pepites de chocolat", "aux myrtile et pepites de chocolat", "a la vanille et aux chocolat", "aux noisettes et chocolat", "aux chocolat", "nature et oreo", "aux framboise et à la vanille", "a la pistache et aux chocolat"]

    @IBOutlet weak var sentenceLabel: UILabel!
    @IBAction func cupcakeButton(_ sender: Any) {
        makeResponse()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func makeResponse(){
        let randomIndexSuject = Int(arc4random_uniform(UInt32(subjects.count)))
        
        let randomSubject = subjects[randomIndexSuject]
        let randomIndexVerb = Int(arc4random_uniform(UInt32(verbsAndObjects.count)))
        let randomVerb = verbsAndObjects[randomIndexVerb]
        sentenceLabel.text = randomSubject + " " + randomVerb
    }


}

