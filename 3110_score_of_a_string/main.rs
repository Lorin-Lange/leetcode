////////////////////////////////////////////////////
//                    LeetCode                    //
//            3110. Score of a String             //
//            Solution by Lorin Lange             //
////////////////////////////////////////////////////

struct Solution {}

impl Solution {
    pub fn score_of_string(s: String) -> i32 {
        s.as_bytes()
            .windows(2)
            .map(|w| (w[0] as i32 - w[1] as i32).abs())
            .sum()
    }
}

fn main() {
    println!("{}", Solution::score_of_string("hello".to_string())); // 13
}
