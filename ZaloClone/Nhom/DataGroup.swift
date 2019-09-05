//
//  DataGroup.swift
//  ZaloClone
//
//  Created by Trung Le on 9/5/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import Foundation
import UIKit




class DataGroup{
    static let isData  = DataGroup()
    
    var GroupArray = [Any]()
    func loadDataGroup(){
        GroupArray.append(TopCell.init())
        GroupArray.append(CreateGroupCell.init())
        GroupArray.append(GroupCell.init())
    }
    
    
    
}
