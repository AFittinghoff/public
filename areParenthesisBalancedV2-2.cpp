#include <string>
#include <iostream>
#include <stack>
#include <unordered_map>

using namespace std;


bool MatchPair(char ch1, char ch2, pair<char, char> chp);
bool areParenthesisBalanced(string str, unordered_map<char, char> parenthesis);

int main(void)
{
	cout << boolalpha;

	//first is key
	unordered_map<char, char> Data{};
	Data['('] = ')';
	Data['{'] = '}';
	Data['['] = ']';

	string str1 = "[{a(0)b}]";
	string str2 = "]{a(0)b}[";

	cout << areParenthesisBalanced(str1, Data) << endl;
	cout << areParenthesisBalanced(str2, Data) << endl;

	unordered_map<char, char> Data2{};
	Data2['('] = ')';
	Data2['a'] = 'b';
	Data2['['] = ']';

	string str3 = "[(ab)]";
	string str4 = "[(a)]";
	string str5 = "(ab)]";

	cout << areParenthesisBalanced(str3, Data2) << endl;
	cout << areParenthesisBalanced(str4, Data2) << endl;
	cout << areParenthesisBalanced(str5, Data2) << endl;
}


bool areParenthesisBalanced(string str, unordered_map<char, char> parenthesis)
{
	//declare stack
	stack<char> stack;
	int i = 0;

	//iterate through string with WHILE-LOOP
	while (str[i])
	{
		for (auto x : parenthesis) //for each key in the string
		{
			if (str[i] == x.first) //if one of the keys is in the string, push that char into the stack
			{
				stack.push(str[i]);
			}

			if (str[i] == x.second) //if you find the key's corresponding value
			{
				if (stack.empty() || !MatchPair(stack.top(), str[i], x)) //if the stack is empty or 
				{							//the stack's top doesn't match the key's first 
					return false;					//& the index val doesn't match the key's second
				}
				else
				{
					stack.pop();
				}
			}
		}
		i++;
	}

	//return if stack is empty
	return stack.empty();
}

//takes two chars and a pair as an argument
bool MatchPair(char ch1, char ch2, pair<char, char> chp)
{
	// return true if the first char matches the pair's first 
	// and the second char matches the pair's second
	if (ch1 == chp.first && ch2 == chp.second)
	{
		return true;
	}
	else
	{
		return false;
	}
}
