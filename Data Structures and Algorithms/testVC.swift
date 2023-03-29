//
//  testVC.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 27.03.2023.
//

import UIKit

class testVC: UIView {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(minSubArrayLen(7, [2,3,1,2,4,3]))
    }
    
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var left = 0
        var right = 0
        var sum = 0
        var minLength = Int.max
        
        while right < nums.count {
            sum += nums[right]
            right += 1
            
            while sum >= s {
                minLength = min(minLength, right - left)
                sum -= nums[left]
                left += 1
            }
        }
        
        return minLength == Int.max ? 0 : minLength
    }

}

/*
 func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
     var left = 0
     var right = 0
     var sum = 0
     var minLength = Int.max
     
     while right < nums.count {
         sum += nums[right]
         right += 1
         
         while sum >= s {
             minLength = min(minLength, right - left)
             sum -= nums[left]
             left += 1
         }
     }
     
     return minLength == Int.max ? 0 : minLength
 }
 */

//  func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
    // метод который принимает значение, массив и возвращает число

// var left = 0
    // для чего это переменная?
    // левый указатель в окне

//  var right = 0
    // правый указатель в окне

// var sum = 0
    //переменная в которую записывается сумма

// var minLength = Int.max
    // бесконечность

// while right < nums.count {
    // запуск цикла

// sum += nums[right]
    // в переменную сум записывается число из массива

// right += 1
    // правый указатель сдвигается вправо на 1

// while sum >= s {
    // внутри цикла еще один цикл, если сумма больше 7 то

// minLength = min(minLength, right - left)
    // то в переменную minLength записывается минимальное число из вдух представленных

// sum -= nums[left]
    // из суммы вычитается левое значение

// left += 1
    // и шаг сдвигается влево на 1

// после цикл закрывается return minLength == Int.max ? 0 : minLength
    // если minLength = Int.max то возвращаем 0, если нет новое значение minLength
    
