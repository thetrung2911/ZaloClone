//
//  NhatKyVC.swift
//  TabBarNavigationController
//
//  Created by Techmaster on 5/21/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class NhatKyVC: UIViewController {
    let searchbar = SearchBarDiary()
    var scroll = UIScrollView()
    let post = UIView()
    let table = UITableView()
    let data = DataMoment.isData
    
    let moment: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.backgroundColor = UIColor.clear; collectionView.register(momentCell.self, forCellWithReuseIdentifier: "moment")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.sv(
            searchbar,
            table
        )
        view.backgroundColor = .gray
        view.layout(
            |searchbar| ~ 50,
            |table|
            
        )
        searchbar.Top == view.safeAreaLayoutGuide.Top
        
        data.loadTableData()
        table.Bottom == view.safeAreaLayoutGuide.Bottom
        table.backgroundColor = .clear
        table.separatorStyle = .none
        table.dataSource = self
        table.delegate = self
        table.allowsSelection = false
        table.register(tableCell.self, forCellReuseIdentifier: "nhatky")
        table.register(mTableCell.self, forCellReuseIdentifier: "moment")
        table.register(postCell.self, forCellReuseIdentifier: "post")
        
    } 
}
extension NhatKyVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = table.dequeueReusableCell(withIdentifier: "moment", for: indexPath) as? mTableCell else {
                fatalError("fail")
            }
            return cell
        case 1:
            guard let cell = table.dequeueReusableCell(withIdentifier: "post", for: indexPath) as? postCell else {
                fatalError("fail")
            }
            return cell
        default:
            guard let cell = table.dequeueReusableCell(withIdentifier: "nhatky", for: indexPath) as? tableCell else {
                fatalError("fail")
            }
            cell.setUpData(memontTable: data.tableArray[indexPath.row] as! MomentTable)
            cell.heartButton.addTarget(self, action: #selector(NhatKyVC.onClickedMapButton(button:)), for: .touchUpInside)
            
            return cell
        }
        
        
    }
    @objc func onClickedMapButton(button: UIButton) {
        button.setImage(UIImage(named: "hearts"), for: .normal)
    }
    

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
