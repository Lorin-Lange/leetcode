#include <iostream>
#include <string>

using namespace std;

class Solution {
public:
    int scoreOfString(const string& s) {
        int score = 0;
        for(int i = 0; i < s.size() - 1; i++) {
            score += abs(static_cast<int>(s[i]) - static_cast<int>(s[i+1]));
        }
        return score;
    }
};

int main() {
    Solution sol;
    cout << sol.scoreOfString("hello") << "\n";
    return EXIT_SUCCESS;
}
