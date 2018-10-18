#include "sys_tree.hpp"
#include <iostream>
#include <string>
#include <vector>

using namespace std;

node::node() : parent(0), content(0) {}

node::node(string x) : parent(0), name(x) {}

node::node(string x, vector<Content> c) : parent(0), name(x), content(c) {}

//string node::get_name() {}
//
//void node::binding() {}
//
//vector<string> node::get_list() {}

node::~node() {}

tree::tree() : root(0) {}

tree::tree(node *node) : root(node) {}

tree::~tree() { destroy(root); }

void tree::destroy(node *some) {
#define SAFE_DELETE(p) {if(p){delete p; p=NULL;}}
    for (unsigned i = 0; i < some->children.size(); i++)
        destroy(some->children[i]);
    SAFE_DELETE(some);
}

tree::iterator::iterator()
        : _node(0), skip_current_children_(false) {
    skip_children();
}

tree::iterator::iterator(node *node)
        : _node(node), skip_current_children_(false) {
    skip_children();
}

tree::iterator tree::iterator::to_parent() {
    if (this->get()->parent)
        return this->_node->parent;
    else
        throw "Not found this program";
}

tree::iterator tree::iterator::to_child(string name) {
    for (int i = 0; i < this->_node->children.size(); i++) {
        if (this->_node->children.at(i)->name == name)
            return this->_node->children.at(i);
    }
    throw "Not found this program";
}

tree::iterator tree::insert(iterator &position, const string &x) {
    node *tmp = new node(x);
    position.get()->children.push_back(tmp);
    tmp->parent = position.get();
    return iterator(tmp);
}

tree::iterator tree::insert_tree(iterator &position, tree *tr) {

    position.get()->children.push_back(tr->root);
    tr->root->parent = position.get();
    return iterator(tr->root);
}

#ifdef TestRun
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstring-compare"

int main() {
    node *n = new node("root");
    cout << "root" << endl;
    tree tr(n);
    cout << "tr" << endl;
    tree::iterator it(n);
    cout << "it" << endl;

    tr.insert(it, "s");
    cout << "insert" << endl;
    try {
        it = it.to_parent();
    } catch (char const *s) {
        cout << s << endl;
    }
    try {
        it = it.to_child("s");
    } catch (char const *s) {
        cout << s << endl;
    }

    cout << it.get()->name << endl;

    return 0;
}

#pragma clang diagnostic pop
#endif