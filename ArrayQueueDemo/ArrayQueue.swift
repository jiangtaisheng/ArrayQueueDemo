//
//  ArrayQueue.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/6.
//

import UIKit
/**
  以数组来实现队列的功能，但是有缺陷，队列满了之后就不能在使用了，所以需要优化做成循环队列
 
 */
class ArrayQueue<T>: NSObject {
    
    init(maxCount: Int){
       super.init()
        self.maxCount = maxCount
        self.dataArray = [T?](repeating: nil, count: maxCount)
        self.front = -1
        self.rear = -1
        print("dataArray:")
        print(dataArray)
    }
    
    var maxCount: Int = 0 //最大容量
    var front: Int = -1 //队列头 指向队列的第一个元素的前一个位置
    var rear: Int = -1 //队列尾部 指向队列的最后一个元素
    var dataArray: [T?] = [] //用于存储数据
    var isEmpty: Bool {
        return self.rear == self.front
    }
    var isFull: Bool {
        return self.rear == self.maxCount-1
    }
    var size: Int {
        return dataArray.filter { item in
            return item != nil
        }.count
    }
    //入队
    func push(item:T) -> Bool{
        if isFull == true {
            print("队列已满")
            return false
        }
        rear += 1
        dataArray[rear] = item
        return true
    }
     //出队列
    func pop() -> T?{
        if self.isEmpty == true {
            print("pop失败已经是空队列了")
            return nil
        }
        self.front += 1
        let item = self.dataArray[self.front]
        self.dataArray[self.front] = nil
        return item

    }
    
    func headQueue()-> T?{
        
        if(self.isEmpty){
            print("队列为空")
            return nil
        }
        
        return self.dataArray[self.front+1]
    }
    
    func showQueue() {
        if dataArray.count == 0{
            print("队列为空")
            return
        }
        for (index,item) in dataArray.enumerated() {
            if let it = item as? [String: Any] {
                print("index:\(index) name:\(String(describing: it["name"])) country:\(it["country"])")
            }else {
                print("index:\(index) item:\(item))")

            }
        }
    }
}
