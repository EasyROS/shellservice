#include "../sys_tree/sys_tree.hpp"

class bind {
public:
    bind();

    ~bind();

    bind(string name, tree *tr, tree::iterator it);



    void ntr(){
        node *root = new node("root");
        tree *tr = new tree(root);
        tree::iterator it(root);

        this->it = it;
        this->n = root;
        this->tr = tr;
    }

    tree::iterator it;
    tree *tr;
    node *n;
private:

};
