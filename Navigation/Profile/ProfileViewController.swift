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
<<<<<<< HEAD
    
    override func viewWillLayoutSubviews() {
        header.frame = view.frame
=======

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
>>>>>>> cdcbde717467804a1e5054b15c569af2e9d7a02e
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
        
        view.backgroundColor = .lightGray
        view.addSubview(header)
        
        header.avatarImage.frame = CGRect(x: 16, y: 84, width: 100, height: 100)
        
        //FIX ME
//        header.titleLabel.frame = CGRect(x: view.center.x, y: 100 , width: 100, height: 20)
        header.showButton.frame = CGRect(x: header.avatarImage.frame.origin.x, y: header.avatarImage.frame.width + 100, width: view.frame.width - 32, height: 50)
=======
        view.backgroundColor = .lightGray
        self.view.addSubview(header)
    }
    
    override func viewWillLayoutSubviews() {
        header.frame = super.view.frame
>>>>>>> cdcbde717467804a1e5054b15c569af2e9d7a02e
    }
}


