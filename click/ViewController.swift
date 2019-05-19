//
//  ViewController.swift
//  click
//
//  Created by Daniel Hikkamorii on 18/05/2019.
//  Copyright © 2019 Daniel Hikkamorii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clicks = 0
    var multiplier = 1
    var uwu = false
    
    @IBOutlet weak var fivemulti: UIButton!
    @IBOutlet weak var tenmulti: UIButton!
    @IBOutlet weak var uwunlock: UIButton!

    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        var butname = sender.title(for: .selected)!
        
        if butname == "Reset OWOs" {
            clicks = 0;
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
        
        if butname  == "OWO" {
            clicks = clicks + (1 * multiplier)
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
        
        if butname == "UWU" && uwu {
            clicks = clicks + (1 * multiplier)
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
        
        if clicks >= 50 && butname == "5x Multiplier - 50 OWOs" && multiplier < 5{
            multiplier = 5
            clicks = clicks - 50
            fivemulti.tintColor = UIColor.lightGray
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
        
        if clicks >= 500 && butname == "10x Multiplier - 500 OWOs" && multiplier < 10{
            multiplier = 10
            clicks = clicks - 500
            tenmulti.tintColor = UIColor.lightGray
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
        
        if clicks >= 1000 && butname == "Unlock UWU button - 1000 OWOs" && !uwu{
            uwu = true;
            clicks = clicks - 1000
            uwunlock.tintColor = UIColor.lightGray
            statusLabel.text = "You've OWO'd \(clicks) times"
        }
    }
    

}

