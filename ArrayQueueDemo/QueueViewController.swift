//
//  QueueViewController.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/9.
//

import UIKit

class QueueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        arrayCycleQueueTest()
    }
    

    func arrayQueueTest() {

        let queue = ArrayQueue<Any>(maxCount: 6)
        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
        let  data5 = ["name": "元世祖", "country": "大元帝国"]

        let _ = queue.push(item: data1)
        let _ = queue.push(item: data2)
        let _ = queue.push(item: data3)
        let _ = queue.push(item: data4)
        let _ = queue.push(item: data5)
    //
        print("size:")
        print(queue.size)
        print("list:")
        print(queue.showQueue())

        print("pop:\(String(describing: queue.pop()))")
        print("pop:\(String(describing: queue.pop()))")
        print("pop:\(String(describing: queue.pop()))")
        print("pop:\(String(describing: queue.pop()))")
        let _ = queue.push(item: data1)
        let _ = queue.push(item: data2)

        print(queue.showQueue())

    }



    func arrayCycleQueueTest() {

        let queue = ArrayCycleQueue<Any>(maxCount: 6)
        let  data1 = ["name": "秦始皇", "country": "大秦帝国"]
        let  data2 = ["name": "汉武大帝", "country": "大汉帝国"]
        let  data3 = ["name": "隋炀帝", "country": "大隋帝国"]
        let  data4 = ["name": "唐太宗", "country": "大唐帝国"]
        let  data5 = ["name": "元世祖", "country": "大元帝国"]

        let _ = queue.push(item: data1)
        let _ = queue.push(item: data2)
        let _ = queue.push(item: data3)
        let _ = queue.push(item: data4)
        let _ = queue.push(item: data5)
        let _ = queue.push(item: data5)

        print("size:")
        print(queue.size)
        print("list:")
        print(queue.showQueue())


        print("pop:\(String(describing: queue.pop()))")
        print("pop:\(String(describing: queue.pop()))")

        let _ = queue.push(item: data1)
        let _ = queue.push(item: data2)
        let _ = queue.push(item: data2)
        print("headQueue:")
        print(queue.headQueue() as Any)
        print(queue.showQueue())

    }

}
