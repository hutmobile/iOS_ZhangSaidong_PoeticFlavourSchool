
//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit

class SmartLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.shadowColor = UIColor.lightGray
        self.shadowOffset = CGSize(width: 1, height: 1)
        self.textAlignment = NSTextAlignment.center
        self.textColor = UIColor.white
        self.backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
