#include "sys_bind.hpp"

bind::bind() : it(0), n(0) {}

bind::bind(string name, tree *tr, tree::iterator iterator) {
    this->tr = tr;
    this->it = tr->insert(iterator, name);
    this->n = this->it.get();
}


#ifdef BindTestRun
int main() {
    bind *root_bind = new bind;
    root_bind->root_tree("root");

    bind *b = new bind("test", root_bind->tr, root_bind->it);
    cout << "1 " << b->n->name << endl;
    bind *root = new bind;
    root->root_tree("tt");
    root_bind->bind_tree(root->tr, root_bind->it);
    cout << "2 " << root_bind->n->children[0]->name << root_bind->n->children[1]->name << endl;
    new bind("test1",root_bind->tr ,b->it);
    cout << "3 " << b->n->children[0]->name << endl;
    return 0;
}
#endif