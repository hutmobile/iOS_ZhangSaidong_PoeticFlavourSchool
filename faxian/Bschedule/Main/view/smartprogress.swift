
//  Copyright © 2018年 adong666666. All rights reserved.
//

import Foundation
import UIKit


class SmartProgressView: UIProgressView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.progressViewStyle = UIProgressViewStyle.bar
        self.progressViewStyle = UIProgressViewStyle.default
        self.progress = 1
        self.progressTintColor = UIColor.white
        self.trackTintColor = UIColor.white
        self.progressImage = UIImage(named: "a10")
        self.trackImage = UIImage(named: "a10")
        self.setProgress(1, animated: true)
        self.contentMode = .scaleAspectFit
        self.transform = CGAffineTransform(scaleX: 1.0, y: 10.0)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 45
        self.alpha = 0.5
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
