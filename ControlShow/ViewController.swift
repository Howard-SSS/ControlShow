//
//  ViewController.swift
//  ControlShow
//
//  Created by Howard-Zjun on 2023/8/5.
//

import UIKit

class ViewController: UIViewController {

    var picketView: HorizontalPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let picketView = HorizontalPickerView(frame: .init(x: (view.width - 150) * 0.5, y: (view.height - 38) * 0.5, width: 150, height: 38), items: ["4", "6", "8", "10", "12", "14"])
        view.addSubview(picketView)
        self.picketView = picketView
        
//        let btn = UIButton(frame: .init(x: picketView.minX, y: picketView.maxY + 10, width: 100, height: 50))
//        btn.backgroundColor = .yellow
//        btn.addTarget(self, action: #selector(touchBtn), for: .touchUpInside)
//        view.addSubview(btn)
    }

    @objc func touchBtn() {
        picketView.updateView(items: ["3", "4"])
    }
}

