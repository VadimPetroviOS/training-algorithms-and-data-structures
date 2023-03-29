//
//  Sliding Window.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 29.03.2023.
//

import Foundation
import UIKit

class SlidingWindow: UIView {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(minSubArrayLen(7, [2,3,1,2,4,3]))
        
    }
    //TODO: 209 "Minimum Size Subarray Sum"
    /*
     В этой задаче мы должны найти минимальную длину подмассива (последовательности элементов), сумма элементов которого не меньше заданного значения s.
     Например, пусть у нас есть массив [2, 3, 1, 2, 4, 3] и задано значение s = 7. Необходимо найти минимальную длину подмассива, сумма элементов которого не меньше 7.
     */
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

    //TODO: 3 "Longest Substring Without Repeating Characters"
    /*
     Дана строка s, наша задача - найти длину самой длинной подстроки, которая не содержит повторяющихся символов.
     Например, если дана строка "abcabcbb", то самая длинная подстрока без повторяющихся символов - "abc", ее длина равна 3.
     */
    
    /*
     a = 1
     ab = 2
     abc = 3
     abca !=4
     bca = 3
     bcab != 4
     cab = 3
     cabc !=4
     abc = 3
     abcb != 4
     */
    
    func lengthOfLongestSubstring(_ stroka: String) -> Int {
        var left = 0
        var right = 0
        var sum = 0
        var maxLength = Int.min
        while right > stroka.count {
            sum += 1
            right += 1
            
            while 
        }
        
        return maxLength
    }
}


