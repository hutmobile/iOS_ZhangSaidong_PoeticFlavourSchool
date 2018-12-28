
//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit

class SmallLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.shadowColor = UIColor.lightGray
        self.shadowOffset = CGSize(width: 1, height: 1)
        self.textAlignment = NSTextAlignment.center
        self.textColor = UIColor.black
        self.backgroundColor = UIColor.clear
        self.alpha = 0.8
        self.font = UIFont (name: "Arial", size: 12)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class PatientInfoCustomLabel: SmallLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var textRect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        textRect.origin.y = bounds.origin.y
        return textRect
    }
    override func drawText(in rect: CGRect) {
        let actualRect = self.textRect(forBounds: rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawText(in: actualRect)
    }
}
