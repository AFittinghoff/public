#include <vector>
#include <iostream>

using namespace std;

vector<int> mergeSorted(vector<int> vect1, vector<int> vect2);

int main(void)
{
	vector<int> mvect;
	mvect.push_back(10);
	mvect.push_back(20);
	mvect.push_back(30);
	mvect.push_back(80);

	vector<int> mvect2;
	mvect2.push_back(1);
	mvect2.push_back(17);
	mvect2.push_back(30);
	mvect2.push_back(35);
	mvect2.push_back(70);
	mvect2.push_back(80);
	
	vector<int> outvect = mergeSorted(mvect, mvect2);
	
	for (auto i : outvect)
	{
		cout << i << " ";
	}
	cout << endl;
}

vector<int> mergeSorted(vector<int> vect1, vector<int> vect2)
{
	vector<int> temp;

	int left = 0;
	int right = 0;

	//for (unsigned int i = 0; i < m_size; i++) //2 counters, increment 1 within if statement
	while (left < vect1.size() || right < vect2.size())
	{
		if (vect1[left] < vect2[right])
		{
			temp.push_back(vect1[left]);
			
			if (left != vect1.size())
			{
				left++;
			}
		}
		else if (vect1[left] > vect2[right])
		{
			temp.push_back(vect2[right]);
			if (right != vect2.size())
			{
				right++;
			}
		}
		else if (vect1[left] == vect2[right])
		{
			temp.push_back(vect1[left]);
			temp.push_back(vect2[right]);
			if (left != vect1.size())
			{
				left++;
			}
			if (right != vect2.size())
			{
				right++;
			}
		}
	}

	return temp;
}
