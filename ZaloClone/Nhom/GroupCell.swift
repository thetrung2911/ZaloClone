//
//  GroupCell.swift
//  ZaloClone
//
//  Created by Trung Le on 9/5/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {
    let table = UITableView()
    var messages: [Message]!
    let title: UILabel = {
        let label = UILabel()
        label.text = "Nhóm đang tham gia (6)"
        label.textColor = .black
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.sv(title,table)
        
        title.top(0).left(16).right(0).height(30)
        title.textAlignment = .left
        
        initData()
        table.top(30).left(0).right(0).bottom(0).height(540)
        table.dataSource = self
        table.register(CellMessage.self, forCellReuseIdentifier: "message")
        table.rowHeight = 90.0
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initData() {
        messages = [
            Message(avatar: UIImage(named: "thuhang")!,
                    name: "Teachmaster",
                    short_msg: "Cường Phạm: Chiều nay mình học gì",
                    time_before: "2 phút",
                    badget: "2"),
            Message(avatar: UIImage(named: "ferarrio_ava")!,
                    name: "React Native",
                    short_msg: "Hoa Tung: Sau đó chạy npm install",
                    time_before: "5 phút",
                    badget: ""),
            Message(avatar: UIImage(named: "avatar")!,
                    name: "Teachmaster",
                    short_msg: "Cường Phạm: Chiều nay mình học gì",
                    time_before: "2 phút",
                    badget: "2"),
            Message(avatar: UIImage(named: "avatar1")!,
                    name: "React Native",
                    short_msg: "Hoa Tung: Sau đó chạy npm install",
                    time_before: "5 phút",
                    badget: ""),
            Message(avatar: UIImage(named: "thuhang")!,
                    name: "Teachmaster",
                    short_msg: "Cường Phạm: Chiều nay mình học gì",
                    time_before: "2 phút",
                    badget: "2"),
            Message(avatar: UIImage(named: "avatar")!,
                    name: "React Native",
                    short_msg: "Hoa Tung: Sau đó chạy npm install",
                    time_before: "5 phút",
                    badget: "")
        ]
    }
    
}
extension GroupCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "message", for: indexPath) as! CellMessage
        let message = messages[indexPath.row]
        cell.setMessage(message: message)
        
        return cell
    }
    
    
}
