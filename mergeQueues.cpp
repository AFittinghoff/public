#include <iostream>
#include <string>
#include <queue> //includes standard queue as well as PQ
#include <functional> //allows for construction of min-heap
#include <vector>
using namespace std;

void insertionSort(vector<int>& data);

int main(void)
{
	priority_queue<int> pq_1{};
	priority_queue<int> pq_2{};

	pq_1.push(4);
	pq_1.push(3);
	pq_1.push(10);
	pq_1.push(7);
	pq_1.push(6);

	pq_2.push(2);
	pq_2.push(1);
	pq_2.push(9);
	pq_2.push(8);
	pq_2.push(5);

	vector<int> vect;

	//add both PQs to vector
	while (!pq_1.empty() || !pq_2.empty())
	{

			vect.push_back(pq_1.top());
			pq_1.pop();

			vect.push_back(pq_2.top());
			pq_2.pop();

	}

	//then sort it
	insertionSort(vect);

	//output
	for (auto x : vect)
	{
		cout << x << " ";
	}
}

void insertionSort(vector<int>& data)
{
	int temp;

	//i loop tracks sorted section
	for (int i = 0; i < data.size() - 1; i++)
	{
		//j loop puts next item into sorted section of array
		for (int j = i + 1; j > 0; j--)
		{
			if (data[j] < data[j - 1])
			{
				temp = data[j];
				data[j] = data[j - 1];
				data[j - 1] = temp;
			}
			else
			{
				//if no swap made, we're in the right place
				break;
			}
		}
	}
}
