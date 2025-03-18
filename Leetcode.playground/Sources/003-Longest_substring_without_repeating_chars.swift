//
//  003-Longest_substring_without_repeating_chars.swift
//  
//
//  Created by Sagar Ayi on 3/17/25.
//

/**
 Given a string s, find the length of the longest substring without duplicate characters.

  

 Example 1:

 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
  

 Constraints:

 0 <= s.length <= 5 * 104
 s consists of English letters, digits, symbols and spaces.
 */

import UIKit
class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let charArr = Array(s)
        var set = Set<Character>()
        var counter = 0
        var max = 0
        var i = 0
        var j = 0
        while i < charArr.count {
            if set.contains(charArr[i]) {
                max = Swift.max(max, counter)
                counter = 0
                set.removeAll()
                j = j + 1
                i = j
            }
            set.insert(charArr[i])
            counter = counter + 1
            i = i + 1
        }

        return Swift.max(max, counter)
    }
}
