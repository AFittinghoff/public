/*
Assignment: PA1
Description: Sifts through a .csv file and outputs the death rates that the user specifies.
Author: Alex Fittinghoff
HSU ID: 013304184
Completion Time: 2 hours so far
In completing this program, I recieved help from the following people: N/A
*/

#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <vector>
#include <sstream>
#include "CsvReader.h"
using namespace std;

int main(void)
{
	CsvStateMachine csm{ "death_rates.csv" };
	vector<vector<string>> result = csm.processFile();
	
	for (const auto& i : result) //change from auto loop to standard loop, skipping first line by starting at 1
	{
		for (const auto& cell : i) 
		{
			// if cell == x, cout cell?
			if (cell == "2015")
			{
				cout << cell << " ";
			}
		}
	}
	cout << endl;

	return 0;
}
