//
//  ViewController.swift
//  Canvas
//
//  Created by Daniel Noskin on 10/1/15.
//  Copyright © 2015 Daniel Noskin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var trayView: UIView!
    var trayOriginalCenter: CGPoint!
    var translation: CGPoint!
    var up: Bool!
    var newlyCreatedFace: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var panGestureRecognizer = UIPanGestureRecognizer(target: self, action: "onCustomPan:")
        
        view.addGestureRecognizer(panGestureRecognizer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func onCustomPan(panGestureRecognizer: UIPanGestureRecognizer) {
        var point = panGestureRecognizer.locationInView(view)
        var velocity = panGestureRecognizer.velocityInView(view)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            
            self.newlyCreatedFace.frame = CGRectMake(point.x - 35, point.y - 35, 70, 70)

        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
            self.newlyCreatedFace.frame = CGRectMake(point.x - 25, point.y - 25, 50, 50)
        }
    }

    @IBAction func onTrayPanGesture(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            trayOriginalCenter = trayView.center
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            translation = point
            print(velocity)
            if velocity.y > 0 {
                self.up = true
            } else if velocity.y < 0 {
                self.up = false
            }
            print(up)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")

            UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.05, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                    if self.up == true {
                        self.trayView.center = CGPoint(x: 160, y: 660)
                        self.arrow.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                    } else {
                        self.trayView.center = CGPoint(x: 160, y: 428)
                        self.arrow.transform = CGAffineTransformMakeRotation(CGFloat(0))
                    }
                }, completion: nil)
        }
    }
    
    
    @IBAction func deadPan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    @IBAction func tounguePan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    @IBAction func excitedPan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    @IBAction func sadPan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    @IBAction func happyPan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    @IBAction func winkPan(sender: UIPanGestureRecognizer) {
        var point = sender.locationInView(trayView)
        var velocity = sender.velocityInView(trayView)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            var imageView = sender.view as! UIImageView
            newlyCreatedFace = UIImageView(image: imageView.image)
            view.addSubview(newlyCreatedFace)
            newlyCreatedFace.center = imageView.center
            newlyCreatedFace.center.y += trayView.frame.origin.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            newlyCreatedFace.center = CGPoint(x: point.x, y: point.y + 287)
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    
}

