//
//  mTableCell.swift
//  ZaloClone
//
//  Created by Trung Le on 8/31/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
import Stevia

class mTableCell: UITableViewCell {
    let data = DataMoment.isData
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.sizeToFit()
        return label
    }()
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        sv(moment)
        moment.top(0).left(0).right(0).bottom(0)
        data.loadMomentData()
        moment.centerHorizontally().top(0).width(100%).height(150)
        moment.delegate = self
        moment.dataSource = self
        if let flowLayout_1 = moment.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout_1.scrollDirection = .horizontal
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension mTableCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // hàm trả về số item trong một section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.momentArray.count
        
    }
    
    // hàm trả về nội dung của mỗi item
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moment", for: indexPath) as! momentCell
        
        // gán dữ liệu từng phần tử của mảng vào trong item (gán một cục)
        cell.setUpDataMomentCell(moment: data.momentArray[indexPath.row])
        return cell
        
    }
    
    // hàm trả về kích thước của item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: collectionView.frame.size.height)
        
        
    }
    
    // hàm trả về khoảng cách giữa hai hàng
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // hàm trả về khoảng cách giữa 2 item (tương tự 2 cột)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // hàm chọn item
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = data.momentArray[indexPath.row]
        print(item.name)
    }
    
}
