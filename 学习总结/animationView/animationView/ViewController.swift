//
//  ViewController.swift
//  animationView
//
//  Created by 李洪峰 on 16/7/8.
//  Copyright © 2016年 Huff Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _view1:UIView? = nil
    var _view2:UIView? = nil
    var _view3:UIView? = nil
    var _view4:UIView? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self._view1 = UIView.init(frame:CGRectMake(0, 20, 30, 200))
        self._view1?.backgroundColor = UIColor.redColor()
        self.view.addSubview(self._view1!)
        view1AniMation()
        
        self._view2 = UIView.init(frame:CGRectMake(50, 20, 30, 120))
        self._view2?.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(self._view2!)
        view2AniMation()
        
        self._view3 = UIView.init(frame:CGRectMake(100, 20, 30, 220))
        self._view3?.backgroundColor = UIColor.blueColor()
        self.view.addSubview(self._view3!)
        view3AniMation()
    }
    func view3AniMation(){
        UIView.animateWithDuration(1, animations: { () -> Void in
            let height: CGFloat = CGFloat(arc4random_uniform(500))
            self._view3?.frame = CGRectMake(100, 20, 30, height)
            }) { (ture) -> Void in
                self.view3AniMation()
        }

    }
    func view2AniMation(){
        UIView.animateWithDuration(1, animations: { () -> Void in
            let height: CGFloat = CGFloat(arc4random_uniform(400))
            self._view1?.frame = CGRectMake(0, 20, 30, height)
            }) { (ture) -> Void in
                self.view2AniMation()
        }
    }
    func view1AniMation(){
        UIView.animateWithDuration(1, animations: { () -> Void in
            let height: CGFloat = CGFloat(arc4random_uniform(400))
            self._view2?.frame = CGRectMake(50, 20, 30, height)
            }) { (ture) -> Void in
                self.view1AniMation()
        }
    }
}

