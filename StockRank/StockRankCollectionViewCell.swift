//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by MacBook Pro on 2022/06/29.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // uicomponent에 연결
    // uicomponent에 데이터를 업데이트 하는 코드를 넣자
    
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var companyIconImageView: UIImageView!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var companyPriceLabel: UILabel!
    
    @IBOutlet weak var diffLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = stock.price.currencyFormat
        //        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        
        //        let color: UIColor
        //        if stock.diff > 0 {
        //            color = UIColor.systemBlue
        ////            diffLabel.textColor = UIColor.systemBlue
        //        }else {
        ////            diffLabel.textColor = UIColor.systemRed
        //            color = UIColor.systemRed
        //        }
        diffLabel.text = "\(stock.diff)%"
        diffLabel.textColor = stock.diff > 0 ? UIColor.systemBlue : UIColor.systemRed
        
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        //! -> ?? 선호 (nill인 경우 "" return)
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result
    }
}

extension Int {
    var currencyFormat: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        //! -> ?? 선호 (nill인 경우 "" return)
        let result = numberFormatter.string(from: NSNumber(value: self)) ?? ""
        return result + " 원"
    }
}
