//
//  NhomVC.swift
//  TabBarNavigationController
//
//  Created by Techmaster on 5/21/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class NhomVC: UIViewController {
    let table = UITableView()
    let searchbar = SearchBarView()
    let data = DataGroup.isData
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.sv(searchbar,table)
        
        searchbar.centerHorizontally().width(100%).height(50).Top == view.safeAreaLayoutGuide.Top
        
        table.centerHorizontally().width(100%).bottom(0).Top == searchbar.Bottom
        data.loadDataGroup()
        table.backgroundColor = .clear
        table.separatorStyle = .none
        table.dataSource = self
        table.delegate = self
        table.allowsSelection = false
        table.register(TopCell.self, forCellReuseIdentifier: "topcell")
        table.register(CreateGroupCell.self, forCellReuseIdentifier: "createGroup")
        table.register(GroupCell.self, forCellReuseIdentifier: "groupcell")
    }
    
    
    
}
extension NhomVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.GroupArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                switch indexPath.row {
                case 0:
                    guard let cell = table.dequeueReusableCell(withIdentifier: "topcell", for: indexPath) as? TopCell else {
                        fatalError("fail")
                    }
                    return cell
                case 1:
                    guard let cell = table.dequeueReusableCell(withIdentifier: "createGroup", for: indexPath) as? CreateGroupCell else {
                        fatalError("fail")
                    }
                    return cell
                default:
                    guard let cell = table.dequeueReusableCell(withIdentifier: "groupcell", for: indexPath) as? GroupCell else {
                        fatalError("fail")
                    }
        
                    return cell
                }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
