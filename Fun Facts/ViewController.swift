//
//  ViewController.swift
//  Fun Facts
//
//  Created by Brandon Lee on 6/25/15.
//  Copyright (c) 2015 Brandon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets for button and label
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    //Instance of data model
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        //Get and display random color and a fact
        var theRandomColor = colorWheel.getRandomColor()
        view.backgroundColor = theRandomColor
        funFactButton.tintColor = theRandomColor
        
        funFactLabel.text = factBook.getRandomFact()
    }

    
}

