//
//  ViewController.swift
//  FBGoogleLogin
//
//  Created by Kim on 2017/9/7.
//  Copyright © 2017年 Brain. All rights reserved.
//

import UIKit
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile,.custom("picture") ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

