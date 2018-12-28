//k
//  Created by adong666666 on 2018/5/26.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit
import Charts

class TwentiethViewController: UIViewController {
    var imgView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "37"))
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
        let frame1 = CGRect (x: 133.fitScreen, y: 25.fitHeight, width: 150.fitScreen, height: 40.fitHeight)
        let label = PowerLabel(frame: frame1)
        label.text = "活动明细二"
        label.alpha = 0.8
        label.font = UIFont (name: "Arial", size: 24)
        label.textColor = UIColor.red
        return label
    }()

    var charts2 = {() -> RadarChartView in
        let values1: [Double] = [63, 90, 71, 82, 100, 100]
        let values2: [Double] = [80, 76, 100, 66, 90, 29]

        var entries1: [ChartDataEntry] = Array()
        var entries2: [ChartDataEntry] = Array()

        for (_, value) in values1.enumerated() {
            entries1.append(RadarChartDataEntry(value: value))
        }
        
        for (_, value) in values2.enumerated() {
            entries2.append(RadarChartDataEntry(value: value))
        }
        let dataSet = RadarChartDataSet(values: entries1, label: "活动出勤率")
        dataSet.setColor(NSUIColor.green)
        dataSet.lineWidth = 5
        dataSet.fillColor = NSUIColor.green
        dataSet.fillAlpha = 0.5
        //dataSet.valueFont = UIFont (name: "Arial",size: 20)!
        dataSet.drawFilledEnabled = true

        let dataSet2 = RadarChartDataSet(values: entries2, label: "活动成功发起率")
        dataSet2.setColor(NSUIColor.orange)
        dataSet2.lineWidth = 5
        dataSet2.fillColor = NSUIColor.orange
        dataSet2.fillAlpha = 0.5
        //dataSet2.valueFont = UIFont (name: "Arial",size: 20)!
        dataSet2.drawFilledEnabled = true

        let frame1 = CGRect(x: 48.fitScreen, y: 120.fitHeight, width: 320.fitScreen, height: 480.fitHeight)
        let chart = RadarChartView(frame: frame1)
        chart.backgroundColor = NSUIColor.clear
        chart.data = RadarChartData(dataSets: [dataSet, dataSet2])
        chart.xAxis.labelPosition = .bottom
        chart.chartDescription?.text = ""
        chart.legend.horizontalAlignment = .right
        chart.alpha = 0.7
        return chart
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(imgView)
        self.view.addSubview(btn1)
        self.view.addSubview(llabel)
        self.view.addSubview(charts2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @objc func buttonTap(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
