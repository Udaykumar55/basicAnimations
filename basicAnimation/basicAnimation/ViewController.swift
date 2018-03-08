//
//  ViewController.swift
//  basicAnimation
//
//  Created by vijayasai on 23/02/18.
//  Copyright © 2018 SRAOSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var ThirdButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var FirstButton: UIButton!
    @IBOutlet weak var bigView: UIView!
 
    @IBOutlet weak var MyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.layer.cornerRadius = 30
        myView.clipsToBounds = true
        MyButton.layer.cornerRadius = 30
        MyButton.clipsToBounds = true
        bigView.layer.cornerRadius = 30
        bigView.clipsToBounds = true
        FirstButton.layer.cornerRadius = 30
        FirstButton.clipsToBounds = true

        self.bigView.transform = CGAffineTransform.init(translationX: 0, y: self.myView.frame.origin.y)
       FirstButton.transform = CGAffineTransform.identity
        secondButton.transform = CGAffineTransform.identity
        ThirdButton.transform = CGAffineTransform.identity
        myView.transform = CGAffineTransform.identity
    }

    @IBAction func ACTION(_ sender: Any) {
        
//        UIView.animate(withDuration: 1.0, delay: 0.1, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveLinear, animations: {
//            if self.myView.transform == .identity{
//                //            self.myView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//                self.myView.transform = CGAffineTransform.init(scaleX: 10, y: 20)
//
//            }
//            else{
//                self.myView.transform = CGAffineTransform.identity
//            }
//
//            }, completion: nil)
        
        UIView.animate(withDuration: 1.0, animations: {
            
            if self.myView.transform == .identity{
                //            self.myView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                self.myView.transform = CGAffineTransform.init(scaleX: 30, y: 30)
                self.MyButton.transform = CGAffineTransform.init(rotationAngle: 15)
                self.bigView.transform = CGAffineTransform.identity
                
                UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveLinear, animations: {
                    
                    self.FirstButton.transform = CGAffineTransform.init(translationX: -100, y: -70)
                    self.secondButton.transform = CGAffineTransform.init(translationX: 0, y: -120)
                    self.ThirdButton.transform = CGAffineTransform.init(translationX: 100, y: -70)
                }, completion: nil)
                
                
                
                
                
                
            }
            else{
                self.myView.transform = CGAffineTransform.identity
                self.MyButton.transform = CGAffineTransform.identity
                self.FirstButton.transform = CGAffineTransform.identity
                self.secondButton.transform = CGAffineTransform.identity
                self.ThirdButton.transform = CGAffineTransform.identity
                UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: .curveLinear, animations: {
                    self.bigView.transform = CGAffineTransform.init(translationX: 0, y: -500)
                    
                }, completion: nil)
                
                 
            }
            
        })
            

       
    }
    


}

