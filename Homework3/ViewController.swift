//
//  ViewController.swift
//  Homework3
//
//  Created by Talon DeRocco on 2/20/20.
//  Copyright © 2020 Talon DeRocco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Walk1View: UIImageView!
    @IBOutlet weak var Walk2View: UIImageView!
    @IBOutlet weak var Walk3View: UIImageView!
    @IBOutlet weak var Walk4View: UIImageView!
    @IBOutlet weak var Walk5View: UIImageView!
    @IBOutlet weak var Walk6View: UIImageView!
    @IBOutlet weak var Walk7View: UIImageView!
    @IBOutlet weak var Walk8View: UIImageView!
    @IBOutlet weak var Walk9View: UIImageView!
    @IBOutlet weak var Walk10View: UIImageView!
    
    
    
    
        @IBOutlet weak var speedSlider: UISlider!

    @IBAction func pressedButton(sender: AnyObject) {
        
        if Walk1View.isHidden == true {
            Walk2View.isHidden = false
        } else {
            Walk2View.isHidden = true
        }

        
    }
        
        @IBAction func toggleButton(_sender: Any) {
            
            if (Walk1View.isAnimating)
            {
                Walk1View.stopAnimating()
            } else
            {
                Walk1View.startAnimating()
            }
        }
        
        @IBAction func setSpeed(_sender: Any) {  Walk1View.animationDuration=TimeInterval(3.0-speedSlider.value)
            Walk1View.startAnimating()
        }
        

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            
            let walkAnimation: [UIImage] = [
                UIImage(named: "Walk-1")!,
                UIImage(named: "Walk-2")!,
                UIImage(named: "Walk-3")!,
                UIImage(named: "Walk-4")!,
                UIImage(named: "Walk-5")!,
                UIImage(named: "Walk-6")!,
                UIImage(named: "Walk-7")!,
                UIImage(named: "Walk-8")!,
                UIImage(named: "Walk-9")!,
                UIImage(named: "Walk-10")!,
            ]
            
            
            
            Walk1View.animationImages=walkAnimation
            Walk1View.animationDuration=1.0
            //walk1View.startAnimating()
        }


    }
