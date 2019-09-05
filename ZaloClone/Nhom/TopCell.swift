//
//  TopCell.swift
//  ZaloClone
//
//  Created by Trung Le on 9/5/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class TopCell: UITableViewCell {
    let contenerView = UIView()
    let cButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        sv(contenerView)
        contenerView.centerHorizontally().width(100%).top(0).bottom(1%)
        contenerView.sv(cButton)
        cButton.top(0).left(0).right(0).bottom(0).height(60)
        cButton.contentHorizontalAlignment = .left
        cButton.setImage(UIImage(named: "adds")!, for: .normal)
        cButton.imageView?.contentMode = .scaleAspectFit
        cButton.imageEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 0)
        cButton.setTitle("Tạo nhóm mới", for: .normal)
        cButton.setTitleColor(.darkGray, for: .normal)
        cButton.titleEdgeInsets = UIEdgeInsets(top: 8, left: 32, bottom: 8, right: 0)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
