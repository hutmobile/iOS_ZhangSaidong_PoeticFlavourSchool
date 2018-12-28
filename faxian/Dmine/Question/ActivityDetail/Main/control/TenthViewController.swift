//k
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import Charts

class TenthViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "2"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    var btn: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 20.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "14"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var btn2: PowerButton = {
        let bt2 = PowerButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect (x: 0.fitScreen, y: 280.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt2.backgroundColor = UIColor.clear
        bt2.setTitle("活动明细一", for: UIControlState())
        bt2.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt2.addTarget(self, action: #selector(ViewController.buttonTap2(_:)),
                     for: UIControlEvents.touchUpInside)
        bt2.layer.masksToBounds = true
        bt2.alpha = 0.6
        bt2.layer.cornerRadius = 16
        bt2.layer.borderWidth = 2
        bt2.layer.borderColor = UIColor.clear.cgColor
        bt2.setTitleColor(UIColor.darkText, for: UIControlState())
        return bt2
    }()
    var btn1: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 380.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.clear
        bt1.setTitle("活动明细二", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.alpha = 0.6
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.clear.cgColor
        bt1.setTitleColor(UIColor.darkText, for: UIControlState())
        return bt1
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect (x: 105.fitScreen, y: 25.fitScreen, width: 200.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "活动明细"
        label.alpha = 0.6
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.magenta
        return label
    }()
    var llabel2: PowerLabel = {
        let frame2 = CGRect (x: -50.fitScreen, y: 180.fitHeight, width: 400.fitScreen, height: 40.fitHeight )
        let label = PowerLabel(frame: frame2)
        label.text = "12月份～5月份："
        label.alpha = 0.6
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.darkText
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(llabel)
        self.view.addSubview(llabel2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func buttonTap2(_ button: UIButton) {
        self.present(FifthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap1(_ button: UIButton) {
        self.present(TwentiethViewController(), animated: true, completion: nil)
    }
}
