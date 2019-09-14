#include <vector>
#include <string>
#include <iostream>

using namespace std;

vector<string> fizzbuzz(int N);

int main(void)
{
	vector<string> test_vect = fizzbuzz(16);

	for (auto x : test_vect)
	{
		cout << x << " ";
	}
}

vector<string> fizzbuzz(int N)
{
	//declare our vector
	vector<string> vect;

	//push string versions of each int into vector
	for (int i = 0; i < N; i++)
	{
		//take care of zero case
		if (i == 0)
		{
			string temp = to_string(i);
			vect.push_back(temp);
		}
		else if ((i % 3) == 0 && (i % 5) == 0) //if N is divisible by 3 and 5
		{
			vect.push_back("fizzbuzz");
		}
		else if ((i % 3) == 0) //if N is divisible by 3
		{
			vect.push_back("fizz");
		}
		else if ((i % 5) == 0) //if N is divisible by 5
		{
			vect.push_back("buzz");
		}
		else //default case
		{
			string temp = to_string(i);
			vect.push_back(temp);
		}
	}

	return vect;
}
