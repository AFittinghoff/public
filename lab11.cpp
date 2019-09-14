#include <iostream>
#include <string>
#include <vector>
#include <ctime>
#include <queue>
using namespace std;

void generateRandomGraph(vector<vector<int>> &graph,
   int graph_size,
   int num_connections)
{
   //uncomment to allow for "random" graph generation
   srand(time(NULL));

   //zero out graph and ensure that graph is 
  //large enough
   if (graph.size() < graph_size)
   {
      graph.resize(graph_size);
   }
   for (int i = 0; i < graph.size(); i++)
   {
      if (graph[i].size() < graph_size)
      {
         graph[i].resize(graph_size);
      }
      for (int j = 0; j < graph[i].size(); j++)
      {
         graph[i][j] = 0;
      }
   }
   for (int i = 0; i < num_connections; i++)
   {
      int x = rand() % graph_size;
      int y = rand() % graph_size;
      graph[x][y] = 1;
   }

   //zero out diagonal (do not allow self-connections)
   for (int i = 0; i < graph_size; i++)
   {
      graph[i][i] = 0;
   }
}

//uses a stack, can be iterative
bool dfsConnectedSearch(vector<vector<int>>& graph, int start, int end, vector<int>& visited)
{
	cout << "At: " << start << endl;

	//null case
	if (start == end)
	{
		return true;
	}

	visited[start] = 1;

	for (int i = 0; i < graph[start].size(); i++)
	{
		//skip seen indices
		if (visited[i] == 1)
		{
			continue;
		}
		if (graph[start][i] == 1)
		{
			cout << "Searching: " << i << endl;
			if (dfsConnectedSearch(graph, i, end, visited) == true)
			{
				return true;
			}
			else
			{
				cout << "Hit ground, back at " << start << endl;
			}
		}
	}
   return false;
}

bool dfsConnectedSearch(vector<vector<int>>& graph, int start, int end)
{
	vector<int> found{};
	found.resize(graph.size());
	return dfsConnectedSearch(graph, start, end, found);
}

//uses a stack, MUST be iterative
bool bfsConnectedSearch(vector<vector<int>>& graph, int start, int end, vector<int> &visited)
{
	cout << "At: " << start << endl;

	queue<int> to_visit;
	to_visit.push(start);

	while (!to_visit.empty())
	{
		int front = to_visit.front();
		cout << "Searching: " << front << endl;
		to_visit.pop();

		if (front == end)
		{
			return true;
		}


	}
	return false;
}

bool bfsConnectedSearch(vector<vector<int>>& graph, int start, int end)
{
	vector<int> found{};
	found.resize(graph.size());
	return bfsConnectedSearch(graph, start, end, found);
}

int main(void)
{
	cout << boolalpha;
   vector<vector<int>> graph{};
   generateRandomGraph(graph, 10, 25);
   graph[0][1] = 1;
   graph[1][0] = 1;
   graph[1][3] = 0;
   graph[1][4] = 1;
   graph[4][3] = 0;
   graph[4][9] = 1;
   graph[2][3] = 0;
   graph[9][0] = 1;
   graph[9][3] = 1;
   cout << dfsConnectedSearch(graph, 0, 3);
   return 0;
}
