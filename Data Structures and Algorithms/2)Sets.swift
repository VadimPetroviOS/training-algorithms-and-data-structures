//
//  Set.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 27.03.2023.
//

import UIKit

class Sets: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        print(twoTermsWithSumX(nums: [1,3,5,8,2], x: 7))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //TODO: Задача 1:
        // Дана последовательность положительных чисел длинной N и число Х. Нужно найти два различных числа А и В из последовательности, таких что А+В=Х или вернуть пару 0,0 если такой пары нет
    func twoTermsWithSumX(nums: [Int], x: Int) -> (Int,Int) {
        var prevNums = Set<Int>()
        for nownum in nums {
            if prevNums.contains(x - nownum) {
                return (nownum, x - nownum)
            }
            prevNums.insert(nownum)
        }
        return (0,0)
    }
    //TODO: Задача 2:
        //Пропустил задачу
}
