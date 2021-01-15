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
        button.layer.borderColor = UIColor.black.cgColor
        
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = CGSize(width: 4,height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        
        return button
    }()
    
    
    let avatarImage: UIImageView = {
        let avatar = UIImageView()
        avatar.layer.cornerRadius = 50.0
        return avatar
    }()
    
    let layerImage: CALayer = {
        let layer = CALayer()
        layer.contentsGravity = .resize
        layer.masksToBounds = true;
        layer.contents = UIImage(named: "avatar")?.cgImage
        layer.magnificationFilter = .linear

        layer.cornerRadius = 50.0
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        
        return layer
    }()
    
    let text: UITextField = {
        let text = UITextField()
        return text
    }()
    
    func addSubview() {
        addSubview(titleLabel)
        addSubview(statusLabel)
        addSubview(showButton)
        addSubview(avatarImage)
    }
    
    func addSubLayer() {
        avatarImage.layer.addSublayer(layerImage)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview()
        addSubLayer()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
        addSubview()
        addSubLayer()
}
}
