//
//  activitymain.swift
//  faxian
//
//  Created by 徐杰 on 2018/7/29.
//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit

class SmallButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitleColor(UIColor.black, for: UIControlState())
        self.setTitleColor(UIColor.black, for: UIControlState())
        let imageSize:CGSize = self.imageView!.frame.size
        let titleSize:CGSize = self.titleLabel!.frame.size
        self.frame = CGRect(x: 40.fitScreen, y: 470.fitHeight, width: 100.fitScreen, height: 35.fitHeight)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width , bottom: -imageSize.height - 50, right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: -titleSize.height - 5, left: 0, bottom: 0, right: -titleSize.width)
        self.titleLabel?.font = UIFont(name: "#404040", size: 0.1)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
