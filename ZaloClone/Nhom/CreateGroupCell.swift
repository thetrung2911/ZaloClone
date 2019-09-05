//
//  CreateGroupCell.swift
//  ZaloClone
//
//  Created by Trung Le on 9/5/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class CreateGroupCell: UITableViewCell {
    let contenerView = UIView()
    let title: UILabel = {
        let label = UILabel()
        label.text = "Tạo nhóm với:"
        label.textColor = .black
        return label
    }()
    
    let calendarView = UIView()
    let alarmView = UIView()
    let GrOffView = UIView()
    
    let calendarButton = UIButton()
    let alarmButton = UIButton()
    let groupButton = UIButton()
    
    let calendarTitle: UILabel = {
        let label = UILabel()
        label.text = "Lịch"
        label.textColor = .gray
        return label
    }()
    let alarmTitle: UILabel = {
        let label = UILabel()
        label.text = "Nhắc hẹn"
        label.textColor = .gray
        return label
    }()
    let groupTitle: UILabel = {
        let label = UILabel()
        label.text = "Nhóm Offline"
        label.textColor = .gray
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.sv(contenerView)
        self.backgroundColor = .clear
        contenerView.centerHorizontally().width(100%).top(1%).bottom(1%)
        contenerView.backgroundColor = .white
        contenerView.sv(title, calendarView, alarmView, GrOffView)
        
        title.top(0).left(16).right(0).height(30)
        title.textAlignment = .left
        
        calendarView.top(30).left(0).width(33%).bottom(0).height(90)
        alarmView.top(30).centerHorizontally().width(34%).height(90)
        GrOffView.top(30).right(0).width(33%).bottom(0).height(90)

        calendarView.sv(calendarButton, calendarTitle)
        calendarTitle.centerHorizontally().width(60%).bottom(0).height(30)
        calendarTitle.textAlignment = .center
        calendarButton.centerHorizontally().top(0).size(60)
        calendarButton.layer.borderWidth = 1
        calendarButton.layer.cornerRadius = 20
        calendarButton.layer.borderColor = UIColor.gray.cgColor
        calendarButton.setImage(UIImage(named: "calendar"), for: .normal)
        calendarButton.imageView?.contentMode = .scaleAspectFit
        calendarButton.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)

        alarmView.sv(alarmButton, alarmTitle)
        alarmTitle.centerHorizontally().width(60%).bottom(0).height(30)
        alarmTitle.textAlignment = .center
        alarmButton.centerHorizontally().top(0).size(60)
        alarmButton.layer.borderWidth = 1
        alarmButton.layer.cornerRadius = 20
        alarmButton.layer.borderColor = UIColor.gray.cgColor
        alarmButton.setImage(UIImage(named: "alarm"), for: .normal)
        alarmButton.imageView?.contentMode = .scaleAspectFit
        alarmButton.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)

        GrOffView.sv(groupButton, groupTitle)
        groupTitle.centerHorizontally().width(80%).bottom(0).height(30)
        groupTitle.textAlignment = .center
        groupButton.centerHorizontally().top(0).size(60)
        groupButton.layer.borderWidth = 1
        groupButton.layer.borderColor = UIColor.gray.cgColor
        groupButton.layer.cornerRadius = 20
        groupButton.setImage(UIImage(named: "groff"), for: .normal)
        groupButton.imageView?.contentMode = .scaleAspectFit
        groupButton.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
