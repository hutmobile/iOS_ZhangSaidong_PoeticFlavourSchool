

//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit


class leadLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.shadowColor = UIColor.lightGray
        self.shadowOffset = CGSize(width: 1, height: 1)
        self.textAlignment = NSTextAlignment.center
        self.textColor = UIColor.white
        self.backgroundColor = UIColor.clear
        self.alpha = 0.7
        self.font = UIFont (name: "Arial", size: 12)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class leadButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitleColor(UIColor.black, for: UIControlState())
        self.titleLabel?.font = UIFont(name: "Arial", size: 24)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 16
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.lightText.cgColor
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
