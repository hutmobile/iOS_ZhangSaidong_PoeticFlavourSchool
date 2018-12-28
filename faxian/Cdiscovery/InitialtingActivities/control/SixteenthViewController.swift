//q
//  Created by adong666666 on 2018/5/27. Copyright © 2018年 adong666666. All rights reserved.

import UIKit

class SixteenthViewController: UIViewController {
    var btn = { () -> UIButton in
        let frame1 = CGRect (x: 70.fitScreen, y: 260.fitHeight, width: 280.fitScreen, height: 40.fitHeight)
        let popup = UIButton(frame: frame1)
        popup.backgroundColor = UIColor.orange
        popup.setTitle("获取权限", for: .normal)
        popup.alpha = 0.6
        popup.addTarget(self, action: #selector(SixteenthViewController.cancelAndConfirm(_:)), for: .touchUpInside)
        return popup
    }()
    var btn2 = { () -> UIButton in
        let frame1 = CGRect (x: 70.fitScreen, y: 330.fitHeight, width: 280.fitScreen, height: 40.fitHeight)
        let popup = UIButton(frame: frame1)
        popup.backgroundColor = UIColor.orange
        popup.setTitle("发起活动", for: .normal)
        popup.alpha = 0.6
        popup.addTarget(self, action: #selector(SixteenthViewController.subtitleAlert(_:)), for: .touchUpInside)
        return popup
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 70.fitScreen, y: 400.fitHeight, width: 280.fitScreen, height: 40.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("离开", for: UIControlState())
        bt4.setTitleColor(UIColor.blue, for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 23)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap7(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.alpha = 0.6
        bt4.layer.borderColor = UIColor.green.cgColor
        return bt4
    }()
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "29.jpg"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(imgView)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        self.view.addSubview(btn4)
        self.view.backgroundColor = UIColor.white
        ViewController().tabBarController?.hidesBottomBarWhenPushed = false
        ViewController().tabBarController?.tabBar.isHidden = false
        ViewController().tabBarItem.accessibilityElementsHidden = false
    }
    @objc func sucessAlert(_ sender: AnyObject) {
        _ = SweetAlert().showAlert("", subTitle: "", style: AlertStyle.success)
    }
    @objc func subtitleAlert(_ sender: AnyObject) {

        _ = SweetAlert().showAlert("抱歉了哈!", subTitle: "请你先获取权限吧！", style: AlertStyle.none)
    }
    @objc func cancelAndConfirm(_ sender: AnyObject) {
        _ = SweetAlert().showAlert("你的账户已经过认证？",
                                   subTitle: "你将看到一个不一样的世界!",
                                   style: AlertStyle.warning,
                                   buttonTitle: "取消",
                                   buttonColor: UIColor.colorFromRGB(0xD0D0D0) ,
                                   otherButtonTitle: "确认",
                                   otherButtonColor: UIColor.colorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
                _ = SweetAlert().showAlert("已取消!", subTitle: "请去认证账户吧", style: AlertStyle.error)
            } else {
                _ = SweetAlert().showAlert("已获取!", subTitle: "请去发起活动吧", style: AlertStyle.success)
            }
        }
    }
    @objc func buttonTap7(_ button: UIButton) {

        self.dismiss( animated: true, completion: nil)
        //ViewController().tabBarController?.hidesBottomBarWhenPushed = false
        //ViewController().tabBarController?.tabBar.isHidden = false
        //ViewController().tabBarItem.accessibilityElementsHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
