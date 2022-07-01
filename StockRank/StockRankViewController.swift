//
//  StockRankViewController.swift
//  StockRank
//
//  Created by MacBook Pro on 2022/06/29.
//

import UIKit

class StockRankViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let stockList: [StockModel] = StockModel.list
    
    // Data, Presentation, Layout
    // Data - 어떤 데이터 ? -> stockList
    // Presentation - 셀을 어떻게 표현할건가
    // Layout - 셀을 어떻게 배치할건가
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        <#code#>
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard<꼭 참이어야하는 조건> else {
//            return ...
//        }
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else{
            return UICollectionViewCell()
        }
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        
        return cell
//        return UICollectionViewCell()
    }
    
    
}
extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //width == collectionView
        //heigth : 80
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
