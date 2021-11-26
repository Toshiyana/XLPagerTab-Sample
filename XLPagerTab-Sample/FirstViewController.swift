//
//  FirstViewController.swift
//  XLPagerTab-Sample
//
//  Created by Toshiyana on 2021/11/26.
//

import UIKit
import XLPagerTabStrip

class FirstViewController: UIViewController {
    
    // XLPager tab button title
    var itemInfo: IndicatorInfo = "First"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension FirstViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
