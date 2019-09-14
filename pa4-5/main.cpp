/*
Description: Uses a binary tree to play a "yes/no" animal guessing game with the user. Saves/loads game with input/output files.
Author: Alex Fittinghoff
In completing this program, I recieved help from the following people: Adam Carter
*/

#include "BinaryNode.h"
#include <iostream>
#include <string>
#include <fstream>
using namespace std;


void play_game(BinaryNode<string>* head);
void add_question(BinaryNode<string>* node);

void load_game(string l_file, BinaryNode<string>* l_game);
void load_game_helper(ifstream& lh_file, BinaryNode<string>* lh_node);

void save_game(string s_file, BinaryNode<string>* s_game);
void save_game_helper(ofstream& sh_file, BinaryNode<string>* sh_node);

int main(void)
{
	string user_ans;
	string correct_ans;
	string play_again = "y";
	string load_q;
	string load_file;
	string save_file;

	BinaryNode<string>* loadGame = new BinaryNode<string>;
	BinaryNode<string>* newGame = new BinaryNode<string>{ "Does it walk on 4 legs?" };
	BinaryNode<string>* firstRight = new BinaryNode<string>{ "*dog?" };
	BinaryNode<string>* firstLeft = new BinaryNode<string>{ "*bird?" };
	newGame->setRight(firstRight);
	newGame->setLeft(firstLeft);

	while (play_again == "y" || play_again == "Y" || play_again == "yes" || play_again == "Yes")
	{
		cout << "***Animal Guessing Game***" << endl;
		cout << "Load file? (yes/no): ";
		getline(cin, load_q);

		if (load_q == "Y" || load_q == "y" || load_q == "Yes" || load_q == "yes")
		{
			//cout << "NO FILE YET" << endl;
			cout << "File Name: ";
			getline(cin, load_file);

			load_game(load_file, loadGame);

			cout << "..." + load_file + " loaded" << endl;

			play_game(loadGame);

			save_game(load_file, loadGame);
		}
		else
		{
			cout << "Save results to: ";
			getline(cin, save_file);

			play_game(newGame);
			//recursive function that ONLY exits at end of tree

			save_game(save_file, newGame);
		}
		cout << "Want to play again? (y or Y for yes): ";
		getline(cin, play_again);
	}
	return 0;
}

void load_game(string l_file, BinaryNode<string>* l_game)
{
	ifstream infile;
	infile.open(l_file);

	load_game_helper(infile, l_game);

	infile.close();
}

void load_game_helper(ifstream& lh_file, BinaryNode<string>* lh_node)
{
	string input;
	getline(lh_file, input);

	lh_node->setValue(input);

	//if not leaf
	if (input[0] != '*')
	{
		BinaryNode<string>* leftNode = new BinaryNode<string>;
		BinaryNode<string>* rightNode = new BinaryNode<string>;
		lh_node->setLeft(leftNode);
		lh_node->setRight(rightNode);

		load_game_helper(lh_file, leftNode);
		load_game_helper(lh_file, rightNode);
	}
}

void save_game(string s_file, BinaryNode<string>* s_game)
{
	ofstream outfile(s_file);

	//output to file
	if (outfile.is_open())
	{
		save_game_helper(outfile, s_game);
		outfile.close();
	}
	else
	{
		cout << "Error: Unable to open and/or find file." << endl;
	}
	outfile.close();
}

void save_game_helper(ofstream& sh_file, BinaryNode<string>* sh_node)
{
	//if null
	if (sh_node == nullptr)
	{
		return;
	}

	//base case
	sh_file << sh_node->getValue() << endl;

	//left
	save_game_helper(sh_file, sh_node->getLeft());

	//right
	save_game_helper(sh_file, sh_node->getRight());
}

void play_game(BinaryNode<string>* node)
{
	string user_ans;

	if (node->getRight() == nullptr && node->getLeft() == nullptr)
	{
		string leafstring = node->getValue().substr(1);
		cout << "Is it a " + leafstring + " ";
		getline(cin, user_ans);
	}
	else
	{
		cout << node->getValue() + " ";
		getline(cin, user_ans);
	}

	//user answers yes
	if (user_ans == "y" || user_ans == "Y" || user_ans == "yes" || user_ans == "Yes")
	{	
		if (node->getRight() == nullptr)
		{	//if there's no right child, the game is over and the computer won
			cout << "Hooray! I guessed right!" << endl;
			return;
		}
		else
		{	//it keeps playing
			play_game(node->getRight());
		}
	}
	else
	{
		if (node->getLeft() == nullptr)
		{
			//NO entered, but no left child
			//replace guess with question that could lead to new animal, with new animal as right child and old animal as left child
			add_question(node);
		}
		else
		{	//keeps playing
			play_game(node->getLeft());
		}
	}
}

void add_question(BinaryNode<string>* node)
{
	string corr_ans;
	string question;
	string y_n;
	cout << "Darn, I got it wrong. What's the correct answer? ";
	getline(cin, corr_ans);

	string lstring = node->getValue().substr(1);
//	cout << "Is it a " + lstring + " ";
	cout << "What's a yes/no question I can use to differentiate between a " + corr_ans + " and a " + lstring + " ";
	getline(cin, question);

	cout << "Is the answer to this question yes or no? ";
	getline(cin, y_n);

	string newleaf = "*" + corr_ans + "?";

	BinaryNode<string>* ans = new BinaryNode<string>{ newleaf  };
	BinaryNode<string>* temp = new BinaryNode<string>;

	if (y_n == "y" || y_n == "y" || y_n == "yes" || y_n == "Yes")
	{
		temp->setValue(node->getValue());
		//set left child to old animal, set right child to new animal, set node itself to question
		node->setLeft(temp);
		node->setRight(ans);
		node->setValue(question);
	}
	else
	{
		temp->setValue(node->getValue());
		node->setRight(temp);
		node->setLeft(ans);
		node->setValue(question);
	}

}
