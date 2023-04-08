//
//  ArrayCycleQueue.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/7.
//

import UIKit

/**
  以数组来实现循环队列
 
 front = (front+1)%maxCount  后移一个位置的算法
 (rear-front+maxCount)%maxCount 获取有效的个数
 
 */
class ArrayCycleQueue<T>: NSObject {
    
    init(maxCount: Int){
       super.init()
        self.maxCount = maxCount
        self.dataArray = [T?](repeating: nil, count: maxCount)
        self.front = 0
        self.rear = 0
        print("dataArray:")
        print(dataArray)
    }
    
    var maxCount: Int = 0 //最大容量
    var front: Int = 0 //队列头 指向队列的第一个元素
    var rear: Int = 0 //队列尾部 指向队列的最后一个元素的后一个位置，因为要预留一个位置
    var dataArray: [T?] = [] //用于存储数据
    var isEmpty: Bool {
        return self.rear == self.front
    }
    var isFull: Bool {
        return (rear+1)%maxCount == front
    }
    var size: Int {
      return (rear-front+maxCount)%maxCount
    }
    //入队
    func push(item:T) -> Bool{
        if isFull == true {
            print("队列已满")
            return false
        }
        dataArray[rear] = item
        rear = (rear+1)%maxCount
        return true
    }
     //出队列
    func pop() -> T?{
        if isEmpty == true {
            print("pop失败已经是空队列了")
            return nil
        }
        let item = dataArray[front]
        dataArray[front] = nil
        front = (front+1)%maxCount
        return item

    }
    
    func headQueue()-> T?{
        
        if(isEmpty){
            print("队列为空")
            return nil
        }
        return dataArray[front]
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

