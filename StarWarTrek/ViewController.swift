//
//  ViewController.swift
//  StarWarTrek
//
//  Created by James Campagno on 10/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var starWarsOne: UIImageView!
    @IBOutlet weak var starWarsTwo: UIImageView!
    @IBOutlet weak var starWarsThree: UIImageView!
    @IBOutlet weak var starWarsFour: UIImageView!
    
    @IBOutlet weak var starTrekOne: UIImageView!
    @IBOutlet weak var starTrekTwo: UIImageView!
    @IBOutlet weak var starTrekThree: UIImageView!
    @IBOutlet weak var starTrekFour: UIImageView!
    
    var starWarsCharacter: UIImageView!
    var starTrekCharacter: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStarWarsGestureRecognizers()
        setupStarTrekGestureRecognizers()
    }
    
 
    func setupStarWarsGestureRecognizers() {
        let imageViews = [starWarsOne, starWarsTwo, starWarsThree, starWarsFour]
        
        for image in imageViews {
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(starWarsCharacterChosen))
            gesture.numberOfTapsRequired = 1
            image?.addGestureRecognizer(gesture)
        }
    }
    
    func starWarsCharacterChosen(_ sender: UITapGestureRecognizer) {
        if starWarsCharacter != nil { starWarsCharacter.layer.borderWidth = 0.0 }
        let chosenImageView = sender.view as! UIImageView
        chosenImageView.layer.borderWidth = 2.0
        chosenImageView.layer.borderColor = UIColor.green.cgColor
        starWarsCharacter = chosenImageView
    }
    
    func setupStarTrekGestureRecognizers() {
        let imageViews = [starTrekOne, starTrekTwo, starTrekThree, starTrekFour]
        
        for image in imageViews {
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(starTrekCharacterChosen))
            gesture.numberOfTapsRequired = 1
            image?.addGestureRecognizer(gesture)
        }
    }
    
    func starTrekCharacterChosen(_ sender: UITapGestureRecognizer) {
        if starTrekCharacter != nil { starTrekCharacter.layer.borderWidth = 0.0 }
        let chosenImageView = sender.view as! UIImageView
        chosenImageView.layer.borderWidth = 2.0
        chosenImageView.layer.borderColor = UIColor.green.cgColor
        starTrekCharacter = chosenImageView

    }

}


