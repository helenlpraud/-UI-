//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Елена on 10.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    let header = ProfileHeaderView()
    
    override func viewWillLayoutSubviews() {
        header.frame = view.frame
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(header)
        
        // FIX ME
        header.avatarImage.frame = CGRect(x: 16, y: 84, width: 100, height: 100)
//        header.titleLabel.frame = CGRect(x: view.center.x / 2, y: view.safeAreaInsets.bottom + 47 , width: 100, height: 20)
        header.showButton.frame = CGRect(x: header.avatarImage.frame.origin.x, y: header.avatarImage.frame.width + 100, width: view.frame.width - 32, height: 50)
    }
}


