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
        self.view.addSubview(header)
        
        header.showButton.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
        
        header.avatarImage.frame = CGRect(x: 16, y: 84, width: 100, height: 100)
        
        //FIX ME
        header.titleLabel.frame = CGRect(x: header.avatarImage.frame.maxX + 16, y: 95, width: header.titleLabel.intrinsicContentSize.width, height: header.titleLabel.intrinsicContentSize.height)
        
        header.showButton.frame = CGRect(x: header.avatarImage.frame.origin.x, y: header.avatarImage.frame.maxY + 16 + 16 + 5 , width: view.frame.width - 32, height: 50)
        
        header.statusLabel.frame = CGRect(x: header.titleLabel.frame.origin.x, y: header.avatarImage.frame.maxY - 32, width: header.showButton.frame.width / 2 + 28, height: header.statusLabel.intrinsicContentSize.height)
        
        header.layerImage.frame = header.avatarImage.bounds
        
        header.text.frame = CGRect(x: header.statusLabel.frame.origin.x, y: header.statusLabel.frame.maxY + 5, width: header.showButton.frame.width / 2 + 28, height: 40)
    }
    
    @objc func settingsButtonPressed(sender : UIButton) {
//        header.showButton.backgroundColor = .systemIndigo
        header.statusLabel.text = header.text.text
        print(header.statusLabel.text ?? "")
    }
    
}


