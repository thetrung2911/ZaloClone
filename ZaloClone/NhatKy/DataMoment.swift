//
//  Data.swift
//  ZaloClone
//
//  Created by Trung Le on 8/29/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import Foundation
import UIKit

class Moment {
    var name : String!
    var image : UIImage!
    
    init(_name : String, _image : UIImage!) {
        self.name = _name
        self.image = _image
    }
}
class MomentTable{
    var name: String!
    var avatar: UIImage!
    var photo: UIImage!
    var title: String!
    var time: String!
    
    init(_name: String,_time: String, _avatar: UIImage,_title: String, _photo: UIImage) {
        self.name = _name
        self.avatar = _avatar
        self.title = _title
        self.photo = _photo
        self.time = _time
    }
}

class DataMoment {
    static let isData = DataMoment()
    
    var momentArray = [Moment]()
    var tableArray = [Any]()
    
    func loadMomentData(){
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo1")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo2")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo3")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo4")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo5")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo6")))
        momentArray.append(Moment(_name: "Ronalo", _image: UIImage(named: "ronaldo7")))
    }
    func loadTableData(){
        tableArray.append(mTableCell.init())
        tableArray.append(postCell.init())
        tableArray.append(MomentTable(_name: "Cristiano",_time: "7 giờ trước", _avatar: UIImage(named: "avatar")!, _title: "Going back home!", _photo: UIImage(named: "photo1")!))
        tableArray.append(MomentTable(_name: "Cristiano Ronaldo",_time: "17 giờ trước", _avatar: UIImage(named: "avatar")!, _title: "No doubts in your mind, no dandruff on your head.", _photo: UIImage(named: "photo2")!))
        tableArray.append(MomentTable(_name: "Cristiano",_time: "Hôm qua", _avatar: UIImage(named: "avatar")!, _title: "Feeling good and keep working👍🏻👍🏻", _photo: UIImage(named: "photo3")!))
        tableArray.append(MomentTable(_name: "Cristiano Ronaldo",_time: "Hôm qua", _avatar: UIImage(named: "avatar")!, _title: "Feeling good and keep working👍🏻👍🏻", _photo: UIImage(named: "photo6")!))
        tableArray.append(MomentTable(_name: "Cristiano",_time: "2 ngày trước", _avatar: UIImage(named: "avatar1")!, _title: "We’re already in Sweden for tomorrow's game ⚽️👌🏻💪🏻", _photo: UIImage(named: "photo4")!))
        tableArray.append(MomentTable(_name: "Cristiano",_time: "7 ngày trước", _avatar: UIImage(named: "avatar1")!, _title: "Get ready for the week 😉", _photo: UIImage(named: "photo5")!))
    }
    
}
