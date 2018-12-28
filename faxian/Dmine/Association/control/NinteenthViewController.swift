//j
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import DGElasticPullToRefresh
import Toaster

class NinteenthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "33"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 0.fitHeight, width: 414.fitScreen, height: 737.fitHeight)
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
        label.text = "协会"
        label.alpha = 0.9
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.green
        return label
    }()

    var activities = ["你加入了校团委实践部！", "你加入了国旗护卫队！", "你加入了校艺术团”！",
                      "你加入了弈林棋社！", "你加入了阳光运动协会！", "你加入了校心理健康部！",
                      "你加入了计算机学院！", "你加入了演讲协会！", "你加入了丹青书法协会！",
                      "你加入了蓝苹果设计协会！", "你加入了耘轩读书会", "你加入了欣源演艺社！"]
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn1)
        self.view.addSubview(llabel)
        let frame1 = CGRect (x: 0.fitScreen, y: 60.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
        tableView = UITableView(frame: frame1)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        tableView.backgroundColor = UIColor.lightText
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor.purple
        tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                self?.activities.insert("没有最近加入的协会，赶紧去加入吧！", at: 0)
                self?.tableView.reloadData()
                self?.tableView.dg_stopLoading()
            }, loadingView: loadingView)
        //}, loadingView: nil)

        tableView.dg_setPullToRefreshFillColor(.cyan)
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        tableView.alpha = 0.7
        self.view.addSubview(tableView)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt  indexPath: IndexPath) -> CGFloat {
        return 56//单元格长度
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "reusedCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)

        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        }

        let rowNum = (indexPath as NSIndexPath).row
        cell?.textLabel?.text = activities[rowNum]
        //cell?.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        cell?.backgroundColor = UIColor.green
        cell?.imageView?.image = UIImage(named: "24")
        cell?.imageView?.highlightedImage = UIImage(named: "5")
        cell?.backgroundColor = UIColor.clear
        cell?.alpha = 0.1
        return cell!
    }

    deinit {
        tableView.dg_removePullToRefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
