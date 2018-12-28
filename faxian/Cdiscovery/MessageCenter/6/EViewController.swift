//Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import Toaster

class EViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "22.jpg"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        return view
    }()
    var llabel: PowerLabel = {
        let frame1 = CGRect (x: 160.fitScreen, y: 25.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "详情"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.magenta
        return label
    }()
    var llabel1: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 80.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "恭喜恭喜,你已成功报名活动了!"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    
    var llabel3: PowerLabel = {
        let frame1 = CGRect (x: 20.fitScreen, y: 150.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "接下来请不忘初心"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel4: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 200.fitHeight, width: 400.fitHeight, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "保持着参与活动的热情和信念"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel5: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 250.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "预祝你能快乐地陪大家度过此次活动"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel6: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 300.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "并拥有属于自己的美好经历"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel7: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 350.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "在活动中有所收获"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel8: PowerLabel = {
        let frame1 = CGRect (x: 10.fitScreen, y: 400.fitHeight, width: 400.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "最后"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var llabel9: PowerLabel = {
        let frame1 = CGRect (x: -10.fitScreen, y: 450.fitHeight, width: 435.fitScreen, height: 60.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "期待在美好的时间和地点相约美好的你"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 22)
        label.textColor = UIColor.darkText
        return label
    }()
    var btn1: UIButton = {
        let bt1 = UIButton(type: UIButtonType.roundedRect)
        bt1.frame = CGRect(x: 0.fitScreen, y: 30.fitHeight, width: 25.fitScreen, height: 25.fitHeight)
        bt1.setBackgroundImage(UIImage(named: "14"), for: UIControlState())
        bt1.setTitle(" ", for: UIControlState())
        bt1.setTitleColor(UIColor.white, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 24)
        bt1.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        return bt1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(llabel)
        self.view.addSubview(llabel1)
        self.view.addSubview(llabel3)
        self.view.addSubview(llabel4)
        self.view.addSubview(llabel5)
        self.view.addSubview(llabel6)
        self.view.addSubview(llabel7)
        self.view.addSubview(llabel8)
        self.view.addSubview(llabel9)
        self.view.addSubview(btn1)
        ToastView.appearance().backgroundColor = UIColor.lightText
        ToastView.appearance().textColor = UIColor.magenta
        ToastView.appearance().font = UIFont(name: "Arial", size: 24)
        ToastView.appearance().textInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        ToastView.appearance().cornerRadius = 30
        ToastView.appearance().bottomOffsetPortrait = 120
        Toast(text: "小伙伴们一定要准时参加活动哟，我们不见不散！").show()
    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss( animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

