#include <iostream>
#include <vector>

using namespace std;

class TreeNode
{
public:
	int value;
	TreeNode *left = nullptr;
	TreeNode *right = nullptr;
	TreeNode(int v = 0)
	{
		value = v;
	}
};

vector<int> bstToVector(TreeNode* node);

void bstToVectorHelper(vector <int> &h_vect, TreeNode* node);

int main(void)
{
	vector <int> mvect;

	TreeNode * root = new TreeNode(1);
	root->left = new TreeNode(2);
	root->right = new TreeNode(3);
	root->left->left = new TreeNode(4);
	root->left->right = new TreeNode(5);

	mvect = bstToVector(root);

	for (auto i : mvect)
	{
		cout << mvect[i] << " ";
	}
}


vector<int> bstToVector(TreeNode* node)
{
	vector<int> vect{ 0 };

	//null case
	if (node == nullptr)
	{
		return vect;
	}

	bstToVectorHelper(vect, node);

	return vect;
}

void bstToVectorHelper(vector <int> &h_vect, TreeNode* node)
{
	//null case
	if (node == nullptr)
	{
		return;
	}
	
	//left
	bstToVectorHelper(h_vect, node->left);

	//center
	h_vect.push_back(node->value);

	//right
	bstToVectorHelper(h_vect, node->right);
}