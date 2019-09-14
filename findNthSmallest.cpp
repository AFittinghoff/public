#include <iostream>
#include <vector>
#include <queue> 
#include <string>

using namespace std;

int findNthSmallest(vector<int> numbers, int n);

int main(void)
{
	vector<int> vect;
	vect.push_back(1);
	vect.push_back(3);
	vect.push_back(2);
	vect.push_back(5);
	vect.push_back(9);
	vect.push_back(8);
	vect.push_back(6);

	cout << findNthSmallest(vect, 1) << endl;
	cout << findNthSmallest(vect, 2) << endl;
	cout << findNthSmallest(vect, 3) << endl;
	cout << findNthSmallest(vect, 4) << endl;
}

int findNthSmallest(vector<int> numbers, int n) //nth from the end of a priority queue
{
	priority_queue<int> p_queue{};

	for (auto i : numbers) //push vect vals into priority queue
	{
		p_queue.push(i);
	} 

	while (p_queue.size() > n) //pop elements until you've only got n left, which will be n from the smallest/back
	{
		p_queue.pop();
	}

	return p_queue.top(); //return top
}