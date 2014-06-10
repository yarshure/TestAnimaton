//
//  ViewController.swift
//  TestAnimaton
//
//  Created by XiangBoKong on 6/10/14.
//  Copyright (c) 2014 XiangBoKong. All rights reserved.
//

import UIKit
import QuartzCore

extension CALayer
{
    func setTransform1(transform:CATransform3D)
    {
        self.transform = transform
    }
}

class ViewController: UIViewController {
    @IBOutlet var testView:UIView?
    
    @IBAction func runAction()
    {
        // self.delegate!.jokeCell(self, didClickShareButtonWithData:self.data)
        //testView?.alpha = 0.5;
        var layer:CALayer?
        layer = testView?.layer
       // layer?.hidden = true
        var hidden=layer?.hidden
        hidden = true;
        //var t=layer?.affineTransform();
//        layer?.setAffineTransform(CGAffineTransformRotate(t!,0.5));
        var a = CABasicAnimation(keyPath: "transform")
        var t=layer?.transform
        a.fromValue = NSValue(CATransform3D: t!)
        var t1=CATransform3DRotate(t!,2.0,0,0,1);
        a.toValue = NSValue(CATransform3D: t1)
        a.duration = 1.0;
        a.timingFunction = CAMediaTimingFunction( name:kCAMediaTimingFunctionEaseInEaseOut)
        layer?.addAnimation(a, forKey: "test");
        layer?.setTransform1(t1)
        //var animation:CABasicAnimation;
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

