//
//  StackHelper.swift
//  ArrayQueueDemo
//
//  Created by cmsic-产研 on 2023/4/12.
//

import UIKit

class StackHelper: NSObject {
    // 使用栈来计算 表达式计算 比如 "3+6*2-6/3+5"
    /**
     思路：
     1.新建2个栈 ，一个数栈用来存储数字numberStack ，一个符号栈用存储运算符operatorStack
     2.遍历表达式，
     遇到数字（遍历数据时得遍历完整，比如700，因为是按char去遍历的，所以的向后探一位，判断是数字还是符号，如果是符号，此次数据完整了，如果不是往后在遍历）就把数字压到 numberStack，
     遇到运算符就要考虑以下情况：
        1） operatorStack为空，就直接压到  运算符栈中
        2） operatorStack不为空，此时用当前运算符和 栈顶运算符比较 运算符优先级： 如果当前运算符的优先级大于栈顶运算符，就直接把运算符压入到栈，如果当前的运算符小于等于栈顶运算符，
           1）就从数据栈numberStack 出栈两个数据，从运算符号栈中出栈一个运算符，计算得到的数据重新压入数据栈numberStack中，然后当前运算符号入栈。
        3）当表达式 遍历完成，就顺序的从数据栈和符号栈出栈，并运算出的结果存入数据栈
        4） 当数据栈中只剩下一个数据时，就是表达式的结果
     */
    static func calculator() {
        
        
    }
}
