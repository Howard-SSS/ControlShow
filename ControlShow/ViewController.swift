//
//  ViewController.swift
//  ControlShow
//
//  Created by Howard-Zjun on 2023/8/5.
//

import UIKit

class ViewController: UIViewController {

    var picketView: HorizontalPickerView!
    
    var pixelPickerView: PixelPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let picketView = HorizontalPickerView(frame: .init(x: (view.width - 150) * 0.5, y: (view.height - 38) * 0.5, width: 150, height: 38), items: ["4", "6", "8", "10", "12", "14"])
        view.addSubview(picketView)
        self.picketView = picketView
        
        let pixelPickerView = PixelPickerView(frame: .init(x: (view.width - 355) * 0.5, y: picketView.maxY + 10, width: 355, height: 178), x: 4, y: 1)
        view.addSubview(pixelPickerView)
        self.pixelPickerView = pixelPickerView
    }

    @objc func touchBtn() {
        picketView.updateView(items: ["3", "4"])
    }
}

