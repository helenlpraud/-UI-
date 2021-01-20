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
        button.setTitle("Установить новый статус", for: .normal)
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
        text.backgroundColor = .white
        text.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        text.textColor = .black
        
        text.layer.cornerRadius = 12
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.black.cgColor
        text.layer.masksToBounds = true;
        return text
    }()
    
    func addSubview() {
        addSubview(titleLabel)
        addSubview(statusLabel)
        addSubview(showButton)
        addSubview(avatarImage)
        addSubview(text)
    }
    
    func addSubLayer() {
        avatarImage.layer.addSublayer(layerImage)
    }
    
    override func layoutSubviews() {
        avatarImage.frame = CGRect(x: 16,
                                   y: super.safeAreaInsets.top + 16,
                                   width: 100,
                                   height: 100)
        
        titleLabel.frame = CGRect(x: avatarImage.frame.maxX + 16,
                                  y: super.safeAreaInsets.top + 27,
                                  width: titleLabel.intrinsicContentSize.width,
                                  height: titleLabel.intrinsicContentSize.height)
        
        showButton.frame = CGRect(x: avatarImage.frame.origin.x,
                                  y: avatarImage.frame.maxY + 16 + 16 + 5,
                                  width: super.frame.width - 32,
                                  height: 50)
        
        statusLabel.frame = CGRect(x: titleLabel.frame.origin.x,
                                   y: avatarImage.frame.maxY - 32,
                                   width: showButton.frame.width / 2 + 28,
                                   height: statusLabel.intrinsicContentSize.height)
        
        layerImage.frame = avatarImage.bounds
        
        text.frame = CGRect(x: statusLabel.frame.origin.x,
                            y: statusLabel.frame.maxY + 5,
                            width: showButton.frame.width / 2 + 28,
                            height: 40)
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
