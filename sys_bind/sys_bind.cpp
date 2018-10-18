#include "sys_bind.hpp"

bind::bind() : it(0), n(0) {}

bind::bind(string name, tree *tr, tree::iterator iterator) {

    this->it = tr->insert(iterator, name);
    this->n = this->it.get();
}



int main() {
    bind *root_bind = new bind;
    root_bind->ntr();

    bind *b = new bind("test", root_bind->tr, root_bind->it);
    cout << "1 " << b->n->name << endl;

    cout << "2 " << b->it.get()->name << endl;
    new bind("test1",root_bind->tr ,b->it);
    cout << "3 " << b->n->children[0]->name << endl;
    return 0;
}