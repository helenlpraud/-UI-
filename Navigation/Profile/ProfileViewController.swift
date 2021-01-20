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
    }
    
    @objc func settingsButtonPressed(sender : UIButton) {
        header.statusLabel.text = header.text.text
        print(header.statusLabel.text ?? "")
    }
    
}


