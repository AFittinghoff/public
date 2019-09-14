#include <vector>
#include <queue>
#include <iostream>
#include <string>
#include <unordered_map>

using namespace std;

int index_of_max(vector<int> v);
string mostRainfall(vector<int> vect);

int main(void)
{
	//vector from lab final prompt
	vector<int> rainydays = { 1, 1, 2, 1, 1, 1, 3, 0, 0, 1, 4, 2, 1, 2 };

	cout << mostRainfall(rainydays);
}

int index_of_max(vector<int> v)
{
	//get a largest and a temp val
	int largest, temp;
	//array index declared, it and temp set to zero
	int i = 0;
	temp = i;
	//largest is value in vect corresponding to temp
	largest = v[i];

	//while i is less than size
	while (i < v.size()) 
	{
		//if we find a new max val
		if (largest < v[i])
		{
			//set largest to that value
			largest = v[i];
			//get index of that val
			temp = i;
		}
		i++;
	}
	return temp;
}

string mostRainfall(vector<int> vect)
{
	//get index of max from vect
	int day = index_of_max(vect);

	//mod 7
	int day_of_week = day % 7;

	switch (day_of_week)
	{
	case 0: return "Sunday";
		break;
	case 1: return "Monday";
		break;
	case 2: return "Tuesday";
		break;
	case 3: return "Wednesday";
		break;
	case 4: return "Thursday";
		break;
	case 5: return "Friday";
		break;
	case 6: return "Saturday";
		break;
	default: return "Invalid.";
		break;
	}
}