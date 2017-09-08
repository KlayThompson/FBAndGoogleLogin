//
//  ViewController.swift
//  FBGoogleLogin
//
//  Created by Kim on 2017/9/7.
//  Copyright © 2017年 Brain. All rights reserved.
//

import UIKit
import FacebookLogin
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile,.custom("picture") ])
        loginButton.center = view.center
        
//        view.addSubview(loginButton)
        GIDSignIn.sharedInstance().signOut()
        let googleButton = GIDSignInButton()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().shouldFetchBasicProfile = true
        googleButton.center = view.center
        view.addSubview(googleButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

// MARK: - GIDSignInDelegate, GIDSignInUIDelegate
extension ViewController: GIDSignInDelegate, GIDSignInUIDelegate {
    //登录结束返回，
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
    }
    
    // MARK: - GIDSignInUIDelegate
    //弹出登录页面
    func sign(_ signIn: GIDSignIn!, present viewController: UIViewController!) {
        
        
        present(viewController, animated: true, completion: nil)
        
    }
    //登录成功关闭登录页面返回
    func sign(_ signIn: GIDSignIn!, dismiss viewController: UIViewController!) {
        dismiss(animated: true, completion: nil)
    }
}
