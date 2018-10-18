#include "../sys_tree/sys_tree.hpp"

class bind {
public:
    bind();

    ~bind();

    bind(string name, tree *tr, tree::iterator it);

    void root_tree(string name){
        node *root = new node(name);
        tree *tr = new tree(root);
        tree::iterator it(root);

        this->it = it;
        this->n = root;
        this->tr = tr;
    }

    void bind_tree(tree *tr, tree::iterator it){
        tr->insert_tree(it,tr);
    }

    tree::iterator it;
    tree *tr;
    node *n;

};
