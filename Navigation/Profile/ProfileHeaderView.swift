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
        let title = UILabel()
        title.text = "Леночка"
        title.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        title.textColor = .black
        return title
    }()
    
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "В ожидании чуда.."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    let showButton: UIButton = {
        let button = UIButton()
        button.setTitle("Кнопка", for: .normal)
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
    
    func addSubview() {
        addSubview(titleLabel)
        addSubview(statusLabel)
        addSubview(showButton)
        addSubview(avatarImage)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
        addSubview()
    
}
}
