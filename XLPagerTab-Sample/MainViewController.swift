//
//  ViewController.swift
//  XLPagerTab-Sample
//
//  Created by Toshiyana on 2021/11/26.
//

import UIKit
import XLPagerTabStrip

class MainViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {

//        setTab()
        super.viewDidLoad()
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        // withIdentifier: Storyboard ID of Identity (set in .storyboard)
        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "First")
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Second")
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Third")
        let childViewControllers: [UIViewController] = [firstVC, secondVC, thirdVC]
        return childViewControllers
    }
    
    //MARK: - Method about Tab appearance
    private func setTab() {
        // ButtonBar全体の背景色
        settings.style.buttonBarBackgroundColor = .white
        // ButtonBarItemの背景色
        settings.style.buttonBarItemBackgroundColor = .white
        // ButtonBarItemのフォント
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        // 選択中のButtonBarインジケーターの色
        settings.style.selectedBarBackgroundColor = .orange
        // 選択中のButtonBarインジケーターの太さ
        settings.style.selectedBarHeight = 2.0
        // ButtonBarの左端の余白
        settings.style.buttonBarLeftContentInset = 8
        // ButtonBarの右端の余白
        settings.style.buttonBarRightContentInset = 8
        // Button間のスペース
        settings.style.buttonBarMinimumInteritemSpacing = 16
        // Button内の余白
        settings.style.buttonBarItemLeftRightMargin = 32
        // スワイプやButtonBarItemタップ等でページを切り替えた時の動作
        changeCurrentIndexProgressive = { oldCell, newCell, progressPercentage, changeCurrentIndex, animated in
            
            // 変更されたか、選択前後のCellをアンラップ
            guard changeCurrentIndex, let oldCell = oldCell, let newCell = newCell else { return }
            // 選択前のセルの状態を指定
            oldCell.contentView.backgroundColor = .lightGray
            oldCell.label.textColor = .darkGray
//            print(oldCell.label.text)
            
            // 選択後のセルの状態を指定する
            newCell.contentView.backgroundColor = .green
            newCell.label.textColor = .white
//            print(newCell.label.text)
        }

    }
}

