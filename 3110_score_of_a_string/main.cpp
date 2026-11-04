////////////////////////////////////////////////////
//                    LeetCode                    //
//            3110. Score of a String             //
//            Solution by Lorin Lange             //
////////////////////////////////////////////////////

#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
    int scoreOfString(const string& s) const {
        int score = 0;
        if(s.size() < 2) return score;
        for (size_t i = 1; i < s.size(); i++) {
            score += abs(
                static_cast<int>(s[i]) -
                static_cast<int>(s[i - 1])
            );
        }
        return score;
    }
};

int main() {
    Solution sol;
    cout << sol.scoreOfString("hello") << "\n";
    return EXIT_SUCCESS;
}
