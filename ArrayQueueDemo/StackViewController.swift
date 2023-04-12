//
//  StackViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class StackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        stackTest()
    }
    

    func stackTest(){

        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
        let  data5 = ["name": "元世祖", "country": "大元帝国"]

        let stack =  Stack()
        stack.push(data1)
        stack.push(data2)
        stack.push(data3)
        stack.push(data4)
        stack.push(data5)
        print("stack-peek:")
        print(stack.peek)

        print("stack-pop:")

        print(stack.pop())
        print(stack.pop())
        print(stack.pop())
        print("stack-peek:")
        print(stack.peek)
        print("stack-count:")
        print(stack.count)

    }
}
