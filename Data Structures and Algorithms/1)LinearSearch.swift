//
//  linearSearch.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 27.03.2023.
//

import UIKit

class LinearSearch: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(findX(seq: [1,2,1,2,3], x: 1))
        print(findRightX(seq: [1,2,1,2,3], x: 2))
        print(findMax(seq: [1,2,1,2,3], x: 2))
        print("Задача 4 \(findMax2(seq: [1,2,1,2,3]))")
        print("Задача 5 \(findMinEven(seq: [1,2,1,2,3]))")
        print("Задача 6 \(shortWords(words: ["a", "bb", "ccc", "dddd", "e"]))")
        print("Задача 7 \(isLefLood(h: [3,1,4,3,5,1,1,3,1]))")
        print("Задача 8 \(rle(s: ["A","A","A","A","B","B","B","C","C","X","Y","Z","D","D","D","D","E","E","E","F","F","F","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B"]))")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //TODO: Классические задачи линейного поиска:
    
    //TODO: Задача 1:
        // Дана последовательность N. Найти первое (левое) вхождение положительного числа Х в нее и вывести -1, если число Х не встречалось
    func findX(seq: [Int], x: Int) -> Int {
        var ans = -1
        for i in 0 ... seq.count - 1 {
            if ans == -1 && seq[i] == x {
                ans = i
            }
        }
        return ans
    }
    
    //TODO: Задача 2:
        // дана последовательность N. Найти последнее (правое) вхождение положительного числа Х в нее и вывести -1, если число Х не встречалось
    func findRightX(seq: [Int], x: Int) -> Int {
        var ans = -1
        for i in 0 ... seq.count - 1 {
            if seq[i] == x {
                ans = i
            }
        }
        return ans
    }
    
    //TODO: Задача 3:
        // дана последовательность N (N > 0). Найти максимальное число в последовательности
    func findMax(seq: [Int], x: Int) -> Int {
        var ans = seq[0]
        for i in 1 ... seq.count - 1 {
            if seq[i] > ans {
                ans = seq[i]
            }
        }
        return ans
    }
    
    //TODO: Задача 4:
        // дана последовательность N (N > 0). Найти максимальное число в последовательности и второе по величине число(такое, которое будет максимальным, если вычеркнуть из последовательности одно максимальное число)
    func findMax2(seq: [Int]) -> (Int, Int) {
        var max1 = max(seq[0], seq[1])
        var max2 = min(seq[0], seq[1])
        for i in 2 ... seq.count - 1 {
            if seq[i] > max1 {
                max2 = max1
                max1 = seq[i]
            } else if seq[i] > max2 {
                max2 = seq[i]
            }
        }
        return (max1, max2)
    }
    
    //TODO: Задача 5:
        //дана последовательность N. Найти максимальное четное число в последовательности или вывести -1, если такого не существует
    func findMinEven(seq: [Int]) -> Int {
        var ans = -1
        for i in 0 ... seq.count - 1 {
            if seq[i] % 2 == 0 && (ans == -1 || seq[i] < ans) {
                ans = seq[i]
            }
        }
        return ans
    }
    
    //TODO: Два прохода:
    
    //TODO: Задача 6: Дана последовательность слов. Вывести самые котроткие слова через пробел.
    func shortWords(words: [String]) -> String {
        var minlen = words[0].count
        for word in words {
            if word.count < minlen {
                minlen = word.count
            }
        }
        var ans: [String] = []
        for word in words {
            if word.count == minlen {
                ans.append(word)
            }
        }
        return ans.joined(separator: " ")
    }
    
    //TODO: Задача 7: Задача про дождь. Найти количевство кубиков воды
    func isLefLood(h: [Int]) -> Int {
        var maxpos = 0
        for i in 0 ... h.count - 1 {
            if h[i] > h[maxpos] {
                maxpos = i
            }
        }
        var ans = 0
        var nowm = 0
        for i in 0 ... maxpos {
            if h[i] > nowm {
                nowm = h[i]
            }
            ans += nowm - h[i]
        }
        nowm = 0
        for i in stride(from: h.count - 1, through: maxpos, by: -1) {
            if h[i] > nowm {
                nowm = h[i]
            }
            ans += nowm - h[i]
        }
        return ans
    }
    
    //TODO: Задача 8: Дана строка AAAABBBCCXYZDDDDEEEFFFAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBB Нужно написать функцию RLE
    func rle(s: [String]) -> String {
        func pack(s: String, cnt: Int) -> String {
            if cnt > 1 {
                return s + String(cnt)
            }
            return s
        }
        
        var lastsym = s[0]
        var lastpos = 0
        var ans: [String] = []
        for i in 0 ... s.count - 1 {
            if s[i] != lastsym {
                ans.append(pack(s: lastsym, cnt: i - lastpos))
                lastpos = i
                lastsym = s[i]
            }
        }
        ans.append(pack(s: s[lastpos], cnt: s.count - 1 - lastpos))
        return ans.joined(separator: " ")
    }
}
