#include <string>
#include <iostream>
#include <unordered_map>

using namespace std;

bool areParenthesisBalanced(unordered_map<char, char> parenthesis);
//change this to take a string as an argument, the whole ALWAYS FILLED-IN map, and compare the string to the map
//if the open key doesn't have a corresponding closed in the string, return FALSE
//keys may be anything

int main(void)
{
	cout << boolalpha;

	unordered_map<char, char> Data{};
	Data['('] = ')';
	Data['{'] = '}';
	Data['['] = ']';

	cout << areParenthesisBalanced(Data);
	
	cout << endl;

	unordered_map<char, char> Data2{};
	Data2['('] = 'x';
	Data2['{'] = '}';
	Data2['['] = ']';

	cout << areParenthesisBalanced(Data2);
}

bool areParenthesisBalanced(unordered_map<char, char> parenthesis)
{
	if (parenthesis['('] == ')' && parenthesis['{'] == '}' && parenthesis['['] == ']')
	{
		return true;
	}

	return false;
}
