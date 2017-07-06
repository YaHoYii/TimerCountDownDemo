//
//  ViewController.swift
//  TimerCountDown
//
//  Created by 太阳在线YHY on 2017/7/6.
//  Copyright © 2017年 太阳在线. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var timer = Timer()
	
	@IBOutlet weak var code: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func click(_ sender: UIButton) {
		
		// 初始化 timer ,并设置时间间隔1秒，以及处理事件的方法
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerStartCountDown), userInfo: nil, repeats: true)
		// 开始
		timer.fire()
		
	}

	var i = 60
	func timerStartCountDown() {
		
		guard i >= 0 else {
			// 停止
			timer.invalidate()
		    code.setTitle("获取验证码", for: .normal)
			return
			
		}
		
		i = i - 1
		code.setTitle("\(i)S", for: .normal)
	}

}

