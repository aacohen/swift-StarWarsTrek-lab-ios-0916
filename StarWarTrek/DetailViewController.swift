//
//  DetailViewController.swift
//  StarWarTrek
//
//  Created by Ariela Cohen on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var starWarsImageView: UIImageView!
    @IBOutlet weak var starTrekImageView: UIImageView!
    
    var starWarsImage: UIImage!
    var starTrekImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starTrekImageView.image = starTrekImage
        starWarsImageView.image = starWarsImage
        
        let starWarsPanGesture = UIPanGestureRecognizer(target: self, action: #selector(moveStarWars))
        starWarsImageView.addGestureRecognizer(starWarsPanGesture)
    
        let starTrekPanGesture = UIPanGestureRecognizer(target: self, action: #selector(moveStarTrek))
        starTrekImageView.addGestureRecognizer(starTrekPanGesture)
        

    }
    
    func moveStarWars(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        let imageToMove = sender.view!
        imageToMove.center = point
        checkIfColliding()
        print("move star wars \(point)")
    }
    
    func moveStarTrek(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        let imageToMove = sender.view!
        imageToMove.center = point
        checkIfColliding()
        print("move star trek \(point)")
    }
    
    func checkIfColliding() {
        if starWarsImageView.frame.intersects(starTrekImageView.frame) {
            view.backgroundColor = UIColor.getRandomColor()
        }
    }


}

extension UIColor {
    class func getRandomColor() -> UIColor {
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
