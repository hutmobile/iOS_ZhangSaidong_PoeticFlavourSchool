//j
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import DGElasticPullToRefresh
import Toaster

class TwentyfirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "34"))
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
        label.text = "成就"
        label.alpha = 0.9
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.green
        return label
    }()

    var activities = ["你获得了校级荣誉！", "你获得了计算机学院院级荣誉！", "你取得了“新生杯”第一名”！",
                      "你获得了校园象棋大赛一等奖！", "你获得了“乒乓挑战赛“第一名”！", "你获得了”思辩杯“团体一等奖！",
                      "你获得了省数学竞赛一等奖", "你获得了国家数学竞赛一等奖！", "你获得了世界数学竞赛金牌！",
                      "你申请了在人工智能方面的专利", "你申请了在新能源方面的专利", "你发表了多篇重要的物理学论文！"]
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
        tableView.backgroundColor = UIColor.clear
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor.magenta
        tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                self?.activities.insert("没有最新的成就了，赶紧去拼搏吧！", at: 0)
                self?.tableView.reloadData()
                self?.tableView.dg_stopLoading()
            }, loadingView: loadingView)
        //}, loadingView: nil)

        tableView.dg_setPullToRefreshFillColor(.lightText)
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
        cell?.imageView?.image = UIImage(named: "39")
        cell?.imageView?.highlightedImage = UIImage(named: "41")
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
