//
//  ViewController.swift
//  wohui-auth0-demo
//
//  Created by Rex Sheng on 2020/3/17.
//  Copyright © 2020 Rex Sheng. All rights reserved.
//

import UIKit
import Auth0

class ViewController: UIViewController {

    @IBAction func startAction(_ sender: Any) {
        Auth0
        .webAuth()
        .audience("https://cnl.wohui.co/")
        .start { result in
            switch result {
            case .success(let credentials):
                print("Obtained credentials: \(credentials)")
            case .failure(let error):
                print("Failed with \(error)")
            }
        }
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        Auth0
        .webAuth()
        .clearSession(federated:false) { success in
            print("clearSession: \(success)")
        }
    }
}

