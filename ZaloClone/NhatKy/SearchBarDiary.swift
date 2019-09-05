//
//  SearchBarDiary.swift
//  ZaloClone
//
//  Created by Trung Le on 8/29/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class SearchBarDiary: UIView {
    
    var gradientLayer :  CAGradientLayer!
    var searchButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "search"), for: .normal)
        return button
    }()
    var notiButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "notification"), for: .normal)
        return button
    }()
    var createButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "create"), for: .normal)
        return button
    }()
    var searchTF = UITextField()
    
    func setupLayout(){
        searchButton.centerVertically().left(16).size(32)
        
        notiButton.centerVertically().right(16).size(24)
        
        createButton.centerVertically().size(24).Right == notiButton.Left - 24
        
        searchTF.centerVertically().Left == searchButton.Right + 16
        searchTF.Right == createButton.Left - 16
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
        self.sv(searchButton, createButton,notiButton, searchTF)
        setupLayout()
    }
    
}
