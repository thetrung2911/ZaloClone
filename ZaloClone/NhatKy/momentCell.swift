//
//  momentCell.swift
//  ZaloClone
//
//  Created by Trung Le on 8/29/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class momentCell: UICollectionViewCell {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "")
        return imageView
    }()
    
    let name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .black
        return label
    }()
    
    func setupLayout(){
        sv(containerView)
        
        containerView.top(4).left(4).right(4).bottom(4)
        
        containerView.sv(name,photoImageView)
        
        name.bottom(0).left(8).right(0).height(30)
        
        photoImageView.top(0).right(0).left(0).bottom(30)
    }
    
    func setUpDataMomentCell(moment : Moment){
        self.name.text = moment.name
        self.photoImageView.image = moment.image
    }
    // khởi tạo cell
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
