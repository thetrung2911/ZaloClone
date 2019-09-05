//
//  SearchBarView.swift
//  TabBarNavigationController
//
//  Created by Techmaster on 5/21/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class SearchBarView: UIView {
    var gradientLayer :  CAGradientLayer!
    var searchButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "search"), for: .normal)
        return button
    }()
    var addButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "add"), for: .normal)
        return button
    }()
    var addChatButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "chat"), for: .normal)
        return button
    }()
    var searchTF = UITextField()
    
    func setupLayout(){
        searchButton.centerVertically().left(16).size(32)
        
        addButton.centerVertically().right(8).size(32)
        
        addChatButton.centerVertically().size(32).Right == addButton.Left - 16
        
        searchTF.centerVertically().Left == searchButton.Right + 16
        searchTF.Right == addChatButton.Left - 16
        searchTF.placeholder = "Tìm bạn bè, tin nhắn ..."
        searchTF.textColor = .white
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if gradientLayer == nil {
            gradientLayer = CAGradientLayer()
            gradientLayer.frame = rect
            
            gradientLayer.colors = [UIColor(red:0.09, green:0.47, blue:1.00, alpha:1.0).cgColor, UIColor(red:0.00, green:0.73, blue:0.99, alpha:1.0).cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
            self.layer.addSublayer(gradientLayer)
        }
        self.sv(searchButton, addChatButton,addButton, searchTF)
        setupLayout()
    }
    
}
