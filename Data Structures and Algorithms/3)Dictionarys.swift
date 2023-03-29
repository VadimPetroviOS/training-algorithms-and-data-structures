//
//  Dictionarys.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 29.03.2023.
//

import UIKit
import Foundation

class Dictionarys: UIView {
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        var seq = [5,4,5,3,2,1,5]
        countSort(seq: &seq)
        print(seq)
    }
    
    //TODO: Объянение как работает сорировка подсчетом
    //TODO: Реализация сортировки подсчетом
    func countSort(seq: inout [Int]) {
        let minVal = seq.min()!
        let maxVal = seq.max()!
        let k = (maxVal - minVal + 1)
        var countArray = Array(repeating: 0, count: k)
        for now in seq {
            countArray[now - minVal] += 1
        }
        var nowpos = 0
        for val in 0 ... k {
            for i in 0 ... countArray[val] - 1 {
                seq[nowpos] = val + maxVal
                nowpos += 1
            }
        }
    }
    
}
