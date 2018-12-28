//e
//  Created by adong666666 on 2018/5/24. Copyright © 2018年 adong666666. All rights reserved.
//这里写了五个页面

import UIKit
import TwicketSegmentedControl
import DGElasticPullToRefresh
import Toaster
import BubbleTransition

class SixthViewController: UIViewController, TwicketSegmentedControlDelegate,UITableViewDelegate, UITableViewDataSource, UIViewControllerTransitioningDelegate {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "10.jpg"))
        view.alpha = 0.2
        view.frame = CGRect(x: 0.fitScreen, y: 100.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        return view
    }()
    var imageView: UIImageView!
    var activities = ["（理学院）“电影史“！", "（文新学院）“心理杂货铺”！", "（魔术社）“魔术晚会”！",
                      "（计算机学院）”废中寻宝“！", "（球盟）”羽毛球培训“！", "（就业部）”招聘会“！",
                      "（外国语学院）“背单词”！", "（交通工程学院）“新生辩论赛”！", "（羽协）“与你相知”！",
                      "（蝶变）“美妆讲座”！", "（丹青协会）“社团培训会”！", "（阳光运动协会）义务修车”！"]

    var tableView: UITableView!
    var bt1: UIButton!
    var transition = BubbleTransition()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "日程"
        self.tabBarItem.image = UIImage(named: "6")
        self.view.backgroundColor = UIColor.white
        let frame1 = CGRect (x: 0.fitScreen, y: 100.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        self.imageView = UIImageView(frame: frame1)
        self.imageView.image = UIImage(named: "10")
        self.imageView.alpha = 0.2
        self.view.addSubview(self.imageView)

        let titles = ["发布", "协会", "活动", "签到", "管理"]
        //let frame = CGRect(x: 5, y: 60, width: view.frame.width - 10, height: 40)
        let frame = CGRect(x: 5.fitScreen, y: 70.fitHeight, width: 404.fitScreen, height: 40.fitHeight)
        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        segmentedControl.defaultTextColor = .gray
        segmentedControl.highlightTextColor = .white
        segmentedControl.sliderBackgroundColor = .orange
        segmentedControl.move(to: 2)
        //segmentedControl.delegate = self as? TwicketSegmentedControlDelegate
        segmentedControl.delegate = self
        self.view.addSubview(segmentedControl)
        self.imageView.frame = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
        self.imageView.image = UIImage(named: "10")
        self.imageView.alpha = 0.2
        self.view.addSubview(self.imageView)
        let frame2 = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
        tableView = UITableView(frame: frame2)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.backgroundColor = UIColor(red: 254.0/255, green: 249.0/255, blue: 252.0/255, alpha: 1.0)
        tableView.backgroundColor = UIColor.lightText
        let loadingView = DGElasticPullToRefreshLoadingViewCircle()
        loadingView.tintColor = UIColor.purple
        tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                self?.activities.insert("没有最近报名活动，赶紧去报名吧！", at: 0)
                self?.tableView.reloadData()
                self?.tableView.dg_stopLoading()
            }, loadingView: loadingView)
        //}, loadingView: nil)

        tableView.dg_setPullToRefreshFillColor(.cyan)
        tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
        tableView.alpha = 0.7
        self.view.addSubview(tableView)
        bt1 = UIButton(frame: CGRect(x: 190.fitScreen, y: 30.fitHeight, width: 40.fitScreen, height: 40.fitHeight))
        bt1.setTitle("我", for: .normal)
        bt1.layer.cornerRadius = 30
        bt1.backgroundColor = UIColor.lightText
        bt1.setTitleColor(UIColor.blue, for: UIControlState())
        bt1.titleLabel?.font = UIFont(name: "Arial", size: 22)
        bt1.layer.masksToBounds = true
        bt1.layer.cornerRadius = 16
        bt1.layer.borderWidth = 2
        bt1.layer.borderColor = UIColor.magenta.cgColor
        bt1.alpha = 0.5
        bt1.addTarget(self, action: #selector(SixthViewController.popViewController(_:)), for: .touchUpInside)
        self.view.addSubview(bt1)
        ToastView.appearance().backgroundColor = UIColor.white
        ToastView.appearance().textColor = UIColor.cyan
        ToastView.appearance().font = UIFont(name: "Arial", size: 24)
        ToastView.appearance().textInsets = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        ToastView.appearance().cornerRadius = 30
        ToastView.appearance().bottomOffsetPortrait = 380
        Toast(text: "欢迎来到诗意校园,开始你的奇幻校园之旅吧！").show()
    }
    func didSelect(_ segmentIndex: Int) {
        if segmentIndex == 0 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "54")
            self.view.addSubview(self.imageView)

            self.view.addSubview(tableView)
        } else if segmentIndex == 1 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "53")
            self.view.addSubview(self.imageView)
  
            self.view.addSubview(tableView)
        } else if segmentIndex == 2 {
            let frame1 = CGRect (x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.frame = frame1
            self.imageView.image = UIImage(named: "10")
            self.imageView.alpha = 0.2
            self.view.addSubview(self.imageView)
            let frame2 = CGRect (x: 0.fitScreen, y: 120.fitHeight, width: 415.fitScreen, height: 2400.fitHeight)
            tableView = UITableView(frame: frame2)
            tableView.delegate = self
            tableView.dataSource = self
            tableView.backgroundColor = UIColor.lightText
            let loadingView = DGElasticPullToRefreshLoadingViewCircle()
            loadingView.tintColor = UIColor.purple
            tableView.dg_addPullToRefreshWithActionHandler({ [weak self] () -> Void in
                    self?.activities.insert("没有最新报名的活动，赶紧去参加吧！", at: 0)
                    self?.tableView.reloadData()
                    self?.tableView.dg_stopLoading()
                }, loadingView: loadingView)
            //}, loadingView: nil)

            tableView.dg_setPullToRefreshFillColor(.cyan)
            tableView.dg_setPullToRefreshBackgroundColor(tableView.backgroundColor!)
            tableView.alpha = 0.7
            self.view.addSubview(tableView)
        } else if segmentIndex == 3 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "52")
            self.view.addSubview(self.imageView)

            self.view.addSubview(tableView)

        } else if segmentIndex == 4 {
            self.imageView.frame = CGRect(x: 0.fitScreen, y: 120.fitHeight, width: 414.fitScreen, height: 660.fitHeight)
            self.imageView.image = UIImage(named: "49")
            self.view.addSubview(self.imageView)
            self.view.addSubview(tableView)
        }
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
        cell?.imageView?.image = UIImage(named: "51")
        cell?.imageView?.highlightedImage = UIImage(named: "44")
        cell?.backgroundColor = UIColor.clear
        cell?.alpha = 0.1
        return cell!
    }
    deinit {
        tableView.dg_removePullToRefresh()
    }
    @objc func nextPage() {
        let viewController = ThirdViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @objc func popViewController(_ btn: UIButton) {
        let viewc = AnimationController()
        viewc.transitioningDelegate = self
        viewc.modalPresentationStyle = .custom
        self.present(viewc, animated: true, completion: nil)
    }

    public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = bt1.center
        transition.bubbleColor = bt1.backgroundColor!

        return transition
    }

    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = bt1.center
        transition.bubbleColor = bt1.backgroundColor!

        return transition
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
