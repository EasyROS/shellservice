#include <iostream>
#include <vector>
#include <string>
using namespace std;

class node {
public:
    node();

    node(string x);

    ~node();

    string name;
    node *parent;
    vector<node *> children;
};

class tree {
public:
    tree();

    tree(node *node);

    ~tree();

    class iterator {
    public:
        iterator();

        iterator(node *node);

        ~iterator() {}

        string &operator*() const {
            return _node->name;
        }

        string *operator->() const {
            return &(_node->name);
        }

        node *get() {
            return _node;
        }

        iterator to_parent();

        iterator to_child(string name);

    protected:
        bool skip_current_children_;

        void skip_children() {
            skip_current_children_ = true;
        }

        node *_node;
    };

    iterator insert(iterator &position, const string &x);

    node *root;
private:
    void destroy(node *some);
};
