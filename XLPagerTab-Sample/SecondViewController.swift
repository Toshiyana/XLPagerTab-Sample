//
//  SecondViewController.swift
//  XLPagerTab-Sample
//
//  Created by Toshiyana on 2021/11/26.
//

import UIKit
import XLPagerTabStrip

class SecondViewController: UIViewController {
    
    // XLPager tab button title
    var itemInfo: IndicatorInfo = "Second"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SecondViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
