
//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit

class SmarttextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.alpha=1
        self.font = UIFont(name: "Arial", size: 24)
        self.textColor = UIColor.white
        self.clearButtonMode = UITextFieldViewMode.whileEditing
        self.keyboardAppearance = UIKeyboardAppearance.light
        self.delegate = self as? UITextFieldDelegate
        self.autocorrectionType = UITextAutocorrectionType.no
        self.textAlignment = NSTextAlignment.center
        self.backgroundColor = UIColor.clear
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
