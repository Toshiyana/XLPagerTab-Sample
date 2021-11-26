//
//  ThirdViewController.swift
//  XLPagerTab-Sample
//
//  Created by Toshiyana on 2021/11/26.
//

import UIKit
import XLPagerTabStrip

class ThirdViewController: UIViewController {
    
    // XLPager tab button title
    var itemInfo: IndicatorInfo = "Third"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension ThirdViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
