//
//  postCell.swift
//  ZaloClone
//
//  Created by Trung Le on 8/30/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class postCell: UITableViewCell {
    let wButton = UIButton()
    let postView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        self.sv( wButton, postView)
        
        wButton.centerHorizontally().left(8).right(8).height(70).top(8)
        wButton.backgroundColor = .white
        wButton.layer.cornerRadius = 10
        wButton.setTitle("Hôm nay bạn thế nào?", for: .normal)
        wButton.setTitleColor(.darkGray, for: .normal)
        wButton.setImage(UIImage(named: "avatar")!, for: .normal)
        wButton.imageView?.contentMode = .scaleAspectFit
        wButton.imageView?.layer.cornerRadius = 27
        wButton.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 0 )
        wButton.contentHorizontalAlignment = .left
        wButton.titleEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        postView.centerHorizontally().left(8).right(8).height(50).bottom(8).Top == wButton.Bottom + 8
        postView.backgroundColor = .white
        postView.layer.cornerRadius = 10
        
        let wImage = UIButton()
        let wVideo = UIButton()
        let wBackground = UIButton()
        postView.sv(wImage,wVideo,wBackground)
        
        wImage.centerVertically().left(0).width(33%).height(50)
        wImage.setImage(UIImage(named: "image")!, for: .normal)
        wImage.setTitle("Đăng hình", for: .normal)
        wImage.setTitleColor(.darkGray, for: .normal)
        wImage.contentHorizontalAlignment = .left
        wImage.imageView?.contentMode = .scaleAspectFit
        wImage.imageEdgeInsets = UIEdgeInsets(top: 8, left: 4, bottom: 8, right: 0 )
        wImage.titleEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
        
        wVideo.centerVertically().centerHorizontally().width(33%).height(50)
        wVideo.setImage(UIImage(named: "video")!, for: .normal)
        wVideo.setTitle("Đăng video", for: .normal)
        wVideo.setTitleColor(.darkGray, for: .normal)
        wVideo.contentHorizontalAlignment = .left
        wVideo.imageView?.contentMode = .scaleAspectFit
        wVideo.imageEdgeInsets = UIEdgeInsets(top: 12, left: 4, bottom: 12, right: 0 )
        wVideo.titleEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 0)
        
        wBackground.centerVertically().right(0).width(33%).height(50)
        wBackground.setImage(UIImage(named: "background")!, for: .normal)
        wBackground.setTitle("Hình nền", for: .normal)
        wBackground.setTitleColor(.darkGray, for: .normal)
        wBackground.contentHorizontalAlignment = .left
        wBackground.imageView?.contentMode = .scaleAspectFit
        wBackground.imageEdgeInsets = UIEdgeInsets(top: 12, left: 4, bottom: 12, right: 0 )
        wBackground.titleEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
