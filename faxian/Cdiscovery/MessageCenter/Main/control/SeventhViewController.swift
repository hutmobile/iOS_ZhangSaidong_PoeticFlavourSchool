//h
//  Created by adong666666 on 2018/5/26. Copyright © 2018年 adong666666. All rights reserved.

import UIKit

class SeventhViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "13"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view
    }()
    var btn0: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 20.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "14"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    var llabel: PowerLabel = {
        let label = PowerLabel(frame: CGRect(x: 105.fitScreen, y: 25.fitHeight, width: 200.fitScreen, height: 40.fitHeight))
        label.text = "消息中心"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.blue
        return label
    }()
    var btn: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 80.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.clear
        bt1.setTitle("恭喜你成功报名“思辩杯”辩论赛！", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap1(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.green.cgColor
        bt1.setTitleColor(UIColor.black, for: UIControlState())
        return bt1
    }()
    var btn1: PowerButton = {
        let bt1 = PowerButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect (x: 0.fitScreen, y: 180.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt1.backgroundColor = UIColor.clear
        bt1.setTitle("恭喜你成功报名“了然于心”音乐会！", for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap2(_:)), for: UIControlEvents.touchUpInside)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.green.cgColor
        bt1.setTitleColor(UIColor.black, for: UIControlState())
        return bt1
    }()
    var btn2: PowerButton = {
        let bt2 = PowerButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect (x: 0.fitScreen, y: 280.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt2.backgroundColor = UIColor.clear
        bt2.setTitle("恭喜你成功报名“环保公益”策划大赛", for: UIControlState())
        bt2.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt2.addTarget(self, action: #selector(ViewController.buttonTap3(_:)), for: UIControlEvents.touchUpInside)
        bt2.layer.masksToBounds = true
        bt2.layer.cornerRadius = 16
        bt2.layer.borderWidth = 2
        bt2.layer.borderColor = UIColor.green.cgColor
        bt2.setTitleColor(UIColor.black, for: UIControlState())
        return bt2
    }()
    var btn3: PowerButton = {
        let bt3 = PowerButton(type: UIButtonType.roundedRect)
        bt3.frame = CGRect (x: 0.fitScreen, y: 380.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt3.backgroundColor = UIColor.clear
        bt3.setTitle("恭喜你成功报名“感恩母亲节”活动！", for: UIControlState())
        bt3.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt3.addTarget(self, action: #selector(ViewController.buttonTap4(_:)), for: UIControlEvents.touchUpInside)
        bt3.layer.masksToBounds = true
        bt3.layer.cornerRadius = 16
        bt3.layer.borderWidth = 2
        bt3.layer.borderColor = UIColor.green.cgColor
        bt3.setTitleColor(UIColor.black, for: UIControlState())
        return bt3
    }()
    var btn4: PowerButton = {
        let bt4 = PowerButton(type: UIButtonType.roundedRect)
        bt4.frame = CGRect (x: 0.fitScreen, y: 480.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt4.backgroundColor = UIColor.clear
        bt4.setTitle("恭喜你成功报名“炫舞啦啦操”比赛！", for: UIControlState())
        bt4.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt4.addTarget(self, action: #selector(ViewController.buttonTap5(_:)), for: UIControlEvents.touchUpInside)
        bt4.layer.masksToBounds = true
        bt4.layer.cornerRadius = 16
        bt4.layer.borderWidth = 2
        bt4.layer.borderColor = UIColor.green.cgColor
        bt4.setTitleColor(UIColor.black, for: UIControlState())
        return bt4
    }()
    var btn5: PowerButton = {
        let bt5 = PowerButton(type: UIButtonType.roundedRect)
        bt5.frame = CGRect (x: 0.fitScreen, y: 580.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt5.backgroundColor = UIColor.clear
        bt5.setTitle("恭喜你成功报名”微笑祝语“活动！", for: UIControlState())
        bt5.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt5.addTarget(self, action: #selector(ViewController.buttonTap6(_:)), for: UIControlEvents.touchUpInside)
        bt5.layer.masksToBounds = true
        bt5.layer.cornerRadius = 16
        bt5.layer.borderWidth = 2
        bt5.layer.borderColor = UIColor.green.cgColor
        bt5.setTitleColor(UIColor.black, for: UIControlState())
        return bt5
    }()
    var btn6: PowerButton = {
        let bt6 = PowerButton(type: UIButtonType.roundedRect)
        bt6.frame = CGRect (x: 0.fitScreen, y: 680.fitHeight, width: 414.fitScreen, height: 50.fitHeight)
        bt6.backgroundColor = UIColor.clear
        bt6.setTitle("恭喜你成功报名“交通安全”宣讲！", for: UIControlState())
        bt6.titleLabel?.font = UIFont(name: "Arial", size: 18)
        bt6.addTarget(self, action: #selector(ViewController.buttonTap6(_:)), for: UIControlEvents.touchUpInside)
        bt6.layer.masksToBounds = true
        bt6.layer.cornerRadius = 16
        bt6.layer.borderWidth = 2
        bt6.layer.borderColor = UIColor.green.cgColor
        bt6.setTitleColor(UIColor.black, for: UIControlState())
        return bt6
    }()
    var llabel1: PowerLabel = {
        let frame1 = CGRect (x: 64.fitScreen, y: 50.fitHeight, width: 120.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "5月21日 13:14"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 15)
        label.textColor = UIColor.lightGray
        return label
    }()
    var llabel2: PowerLabel = {
        let frame1 = CGRect (x: 254.fitScreen, y:150.fitHeight,width: 100.fitScreen, height:  40.fitHeight)
        let label2 = PowerLabel(frame: frame1)
        label2.text = "5月21日 9:21"
        label2.alpha = 0.8
        label2.font = UIFont (name: "Arial", size: 15)
        label2.textColor = UIColor.lightGray
        return label2
    }()
    var llabel3: PowerLabel = {
        let frame1 = CGRect (x: 64.fitScreen, y: 250.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label3 = PowerLabel (frame: frame1)
        label3.text = "5月21日 5:21"
        label3.alpha = 0.8
        label3.font = UIFont (name: "Arial", size: 15)
        label3.textColor = UIColor.lightGray
        return label3
    }()
    var llabel4: PowerLabel = {
        let frame1 = CGRect ( x: 256.fitScreen, y: 350.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label4 = PowerLabel(frame: frame1)
        label4.text = "5月21日 0:25"
        label4.alpha = 0.8
        label4.font = UIFont(name: "Arial", size: 15)
        label4.textColor = UIColor.lightGray
        return label4
    }()
    var llabel5: PowerLabel = {
        let frame1 = CGRect (x: 64.fitScreen, y: 450.fitHeight, width: 120.fitScreen, height: 40.fitHeight)
        let label5 = PowerLabel(frame: frame1)
        label5.text = "5月20日 13:14"
        label5.alpha = 0.8
        label5.font = UIFont (name: "Arial", size: 15)
        label5.textColor = UIColor.lightGray
        return label5
    }()
    var llabel6: PowerLabel = {
        let frame1 = CGRect (x: 256.fitScreen, y: 550.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label6 = PowerLabel(frame: frame1)
        label6.text = "5月20日 9:20"
        label6.alpha = 0.8
        label6.font = UIFont (name: "Arial", size: 15)
        label6.textColor = UIColor.lightGray
        return label6
    }()
    var llabel7: PowerLabel = {
        let frame1 = CGRect (x: 64.fitScreen, y: 650.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label7 = PowerLabel(frame: frame1)
        label7.text = "5月20日 5:20"
        label7.alpha = 0.8
        label7.font = UIFont (name: "Arial", size: 15)
        label7.textColor = UIColor.lightGray
        return label7
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn0)
        self.view.addSubview(btn)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        self.view.addSubview(btn4)
        self.view.addSubview(btn5)
        self.view.addSubview(btn6)
        self.view.addSubview(llabel)
        self.view.addSubview(llabel1)
        self.view.addSubview(llabel2)
        self.view.addSubview(llabel3)
        self.view.addSubview(llabel4)
        self.view.addSubview(llabel5)
        self.view.addSubview(llabel6)
        self.view.addSubview(llabel7)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func buttonTap1(_ button: UIButton) {
        self.present(FifteenthViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap2(_ button: UIButton) {
        self.present(AViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap3(_ button: UIButton) {
        self.present(BViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap4(_ button: UIButton) {
        self.present(CViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap5(_ button: UIButton) {
        self.present(DViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap6(_ button: UIButton) {
        self.present(EViewController(), animated: true, completion: nil)
    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
