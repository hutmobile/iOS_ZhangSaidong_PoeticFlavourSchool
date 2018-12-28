//m
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import ActiveLabel

class TwelvethViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "30"))
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
        view.alpha = 0.2
        return view
    }()
    var btn1: UIButton = {
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
        let frame1 = CGRect (x: 160.fitScreen, y: 25.fitHeight, width: 100.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "帮助"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.purple
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn1)
        self.view.addSubview(llabel)
        customizeLabel()
    }

    func customizeLabel() {
        let label = ActiveLabel(frame: CGRect(x: 20, y: 180, width: view.frame.width - 40, height: 300))
        view.addSubview(label)
        let customType = ActiveType.custom(pattern: "\\sare\\b")
        let customType2 = ActiveType.custom(pattern: "\\ssupports\\b")
        label.enabledTypes.append(customType)
        label.enabledTypes.append(customType2)
        label.urlMaximumLength = 31

        label.customize {
                label in
                label.text = "         在这里，我们提供以下帮助： #忘记密码 #修改绑定手机  #建立协会 #协会管理 #加入协会 #导入成员信息 #活动负责人须知 #活动参与人群 #活动范围 #活动审核 #活动说明 #报名信息 #活动录用 #信息校验 #签到方式 #签到失败原因 #活动点评 #分数与奖励撤销 #分数与奖励发放                                  如有不清楚的问题可以联系本人 @享受生活 " +
                    
                "\n         以下是校园网页助手的网址:\nhttp://www.huthelper.cn \n\n" +
                    
                "         有关于app的问题欢迎与本人交流\n" + " \nhttps://github.com/adong666666\n"
                label.numberOfLines = 0
                label.lineSpacing = 4

                label.textColor = UIColor(red: 102.0/255, green: 117.0/255, blue: 127.0/255, alpha: 1)
                label.hashtagColor = UIColor(red: 85.0/255, green: 172.0/255, blue: 238.0/255, alpha: 1)
                label.mentionColor = UIColor(red: 238.0/255, green: 85.0/255, blue: 96.0/255, alpha: 1)
                label.URLColor = UIColor(red: 85.0/255, green: 238.0/255, blue: 151.0/255, alpha: 1)
                label.URLSelectedColor = UIColor(red: 82.0/255, green: 190.0/255, blue: 41.0/255, alpha: 1)

                label.handleMentionTap { self.alert("本人qq:3440217568", message: $0) }
                label.handleHashtagTap { self.alert("抱歉，内容有待更新", message: $0) }

                label.handleURLTap {
                        let url = URL(string: $0.absoluteString)
                        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                }

                label.customColor[customType] = UIColor.purple
                label.customSelectedColor[customType] = UIColor.green
                label.customColor[customType2] = UIColor.magenta
                label.customSelectedColor[customType2] = UIColor.green

                label.handleCustomTap(for: customType) { self.alert("Custom type", message: $0) }
                label.handleCustomTap(for: customType2) { self.alert("Custom type", message: $0) }
        }
    }

    func alert(_ title: String, message: String) {
        let viewc = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        viewc.addAction(UIAlertAction(title: "好的", style: .cancel, handler: nil))
        present(viewc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss( animated: true, completion: nil)
    }

}
