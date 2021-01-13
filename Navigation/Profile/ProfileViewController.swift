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

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(header)
        
        header.avatarImage.frame = CGRect(x: 16, y: 84, width: 100, height: 100)
        
        //FIX ME
        header.titleLabel.frame = CGRect(x: header.avatarImage.frame.maxX + 16, y: header.avatarImage.frame.origin.y + 27 - 16, width: header.titleLabel.intrinsicContentSize.width, height: header.titleLabel.intrinsicContentSize.height)
        
        header.showButton.frame = CGRect(x: header.avatarImage.frame.origin.x, y: header.avatarImage.frame.width + 100, width: view.frame.width - 32, height: 50)
        
        header.statusLabel.frame = CGRect(x: header.titleLabel.frame.origin.x, y: header.showButton.frame.origin.y - 34 - header.statusLabel.intrinsicContentSize.height, width: header.statusLabel.intrinsicContentSize.width, height: header.statusLabel.intrinsicContentSize.height)
        
        header.layerImage.frame = header.avatarImage.bounds
        
        view.backgroundColor = .lightGray
        self.view.addSubview(header)
    }
    
}


