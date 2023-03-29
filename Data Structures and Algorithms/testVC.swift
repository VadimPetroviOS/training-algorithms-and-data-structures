//
//  testVC.swift
//  Data Structures and Algorithms
//
//  Created by Вадим on 27.03.2023.
//

import UIKit

class testVC: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(abraCadabra(s: ["A","A","A","A","B","B","B","C","C","X","Y","Z","D","D","D","D","E","E","E","F","F","F","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B","B"]))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func abraCadabra(s: [String]) -> String {
        func pack(s: String, cnt: Int) -> String {
            if cnt > 1 {
                return s + String(cnt)
            }
            return s
        }
        
        var lastpos = 0
        var lastSymbol = s[0]
        var ans: [String] = []
        
        for i in 0 ... s.count - 1 {
            if s[i] != lastSymbol {
                ans.append(pack(s: lastSymbol, cnt: i - lastpos))
                lastpos = i
                lastSymbol = s[i]
            }
        }
        ans.append(pack(s: s[lastpos], cnt: s.count - 1 - lastpos))
        return ans.joined(separator: " ")
    }
}
