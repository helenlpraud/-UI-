//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Елена on 10.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    let titleLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    let showButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4,height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0)
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    let avatarImage: UIImageView = {
        let avatar = UIImageView()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 0)
        return avatar
    }()
    
    override func addSubview(_ view: UIView) {
        titleLabel.frame = CGRect(x: view.frame.midX, y: view.frame.origin.y + 27, width: view.frame.width / 3, height: 25)
        avatarImage.frame = CGRect(x: view.frame.origin.x + 16, y: view.frame.origin.y + 16, width: view.frame.width / 4, height: view.frame.width / 4)
        showButton.frame = CGRect(x: avatarImage.frame.origin.x, y: avatarImage.frame.origin.y + 16, width: view.frame.width - 32, height: 50)
        statusLabel.frame = CGRect(x: view.frame.midX, y: showButton.frame.origin.y - 34, width: view.frame.width / 2, height: 16)
        view.addSubview(titleLabel)
        view.addSubview(statusLabel)
        view.addSubview(showButton)
        view.addSubview(avatarImage)
    }
    
}
