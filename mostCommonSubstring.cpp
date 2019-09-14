#include <unordered_map> //hash table
#include <queue>
#include <fstream>
#include <vector>
#include <string>
#include <iostream>

using namespace std;

string mostCommonSubstring(string text, int size);

class stringFreq
{
public:
	int getFreq() const
	{
		return freq;
	}

	void setFreq(int f) 
	{
		freq = f;
	}

	string getString() const
	{
		return str;
	}

	void setString(string s)
	{
		str = s;
	}

	friend bool operator<(const stringFreq& a, const stringFreq& b)
	{
		return a.getFreq() < b.getFreq();
	}

	friend bool operator>(const stringFreq& a, const stringFreq& b)
	{
		return a.getFreq() > b.getFreq();
	}


private:
	string str;
	int freq;
};

int main(void)
{
	//test case #1
	cout << "abcabcdefdefabc. 3: " <<
		mostCommonSubstring("abcabcdefdefabc", 3)
		<< " (expected: abc)"
		<< endl;

	//test case #2
	cout << "defdefabcabc, 3: " <<
		mostCommonSubstring("defdefabcabc", 3)
		<< " (expected: def)"
		<< endl;

	//test case #3
	cout << "aaabbcccc, 1: " <<
		mostCommonSubstring("aaabbcccc", 1)
		<< " (expected: c)"
		<< endl;

	//test case #4
	cout << "abcdefhijklmnopqrstuvwxyz, 4: " <<
		mostCommonSubstring("abcdefhijklmnopqrstuvwxyz", 4)
		<< " (expected: abcd)"
		<< endl;

	//test case #5
	cout << "abc, 5: " <<
		mostCommonSubstring("abc", 5)
		<< " (expected: NULL)"
		<< endl;

	//test case #6
	cout << "(Empty), 1: " <<
		mostCommonSubstring("", 1)
		<< " (expected: NULL)"
		<< endl;

	//test case #7
	cout << "abcabcab, 3: " <<
		mostCommonSubstring("abcabcab", 3)
		<< " (expected: abc)"
		<< endl;

	//test case #8
	cout << "abcabcab, 0: " <<
		mostCommonSubstring("abcabcab", 0)
		<< " (expected: NULL)"
		<< endl;

}

string mostCommonSubstring(string text, int size)
{
	//build hash table and vector
	unordered_map<string, int> frequencies{};
	vector<string> vect;
	priority_queue<stringFreq> max_heap{};

	//null case
	if (size == 0 || text.length() < size)
	{
		return "NULL";
	}

	//get every length (of size) of each string, stick into vector
	for (int i = 0; i < text.length(); i += size)
	{
		vect.push_back(text.substr(i, size));
	}

	//stick into hash table
	for (auto str : vect)
	{
		frequencies[str]++;
	}
	
	for (auto kvp : frequencies)
	{
		stringFreq freqPush;
		freqPush.setString(kvp.first);
		freqPush.setFreq(kvp.second);

		max_heap.push(freqPush);
	}

	stringFreq rf_word = max_heap.top();
	return rf_word.getString();
}