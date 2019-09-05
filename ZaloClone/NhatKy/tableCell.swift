//
//  tableCell.swift
//  ZaloClone
//
//  Created by Trung Le on 8/29/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class tableCell: UITableViewCell {
    let contenerView = UIView()
    let topView = UIView()
    let bottomView = UIView()
    static var heightCell = CGFloat()
    
    lazy var avatarImage : UIImageView = {
        let image = UIImageView()
        image.size(44)
        image.layer.cornerRadius = 22
        image.clipsToBounds = true
        return image
    }()
    lazy var nameLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.sizeToFit()
        return label
    }()
    lazy var timeLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.sizeToFit()
        return label
    }()
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        label.sizeToFit()
        label.lineBreakMode = .byWordWrapping
        
        return label
    }()
    lazy var photoImage : UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        return image
    }()
    lazy var heartButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "heart"), for: .normal)
        var isHeart = false
        return button
    }()
    lazy var cmtButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "cmt"), for: .normal)
        return button
    }()
    lazy var dotsButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "dots"), for: .normal)
        return button
    }()
    
    func setUpData(memontTable: MomentTable){
        self.avatarImage.image = memontTable.avatar
        self.nameLabel.text = memontTable.name
        self.photoImage.image = memontTable.photo
        self.titleLabel.text = memontTable.title
        self.timeLabel.text = memontTable.time
    }
    func setupLayout(){
        self.backgroundColor = .clear
        sv(contenerView)
        
        contenerView.width(100%).height(99%).centerVertically()
        contenerView.backgroundColor = .white
        contenerView.sv(topView, titleLabel, photoImage, bottomView)
        
        topView.centerHorizontally().width(100%).height(60).top(0)
        topView.sv(avatarImage,nameLabel,timeLabel)
        
        avatarImage.top(8).left(16)
        nameLabel.top(8).height(22).right(0).Left == avatarImage.Right + 8
        timeLabel.top(30).height(22).right(0).Left == avatarImage.Right + 8
        
        titleLabel.left(16).right(8).Top == topView.Bottom + 4
        
        photoImage.centerHorizontally().width(100%).height(500).Top == titleLabel.Bottom + 8
        
        bottomView.centerHorizontally().width(100%).height(40).bottom(4).Top == photoImage.Bottom + 4 
        bottomView.sv(heartButton, cmtButton, dotsButton)
        heartButton.centerVertically().left(16).size(32)
        
        cmtButton.centerVertically().left(80).size(28)
        
        dotsButton.centerVertically().right(16).size(32)
        
        
    }
//    @objc func onTap(_ sender: Any?){
//        heartButton.setImage(UIImage(named: "hearts"), for: .normal)
//    }
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
