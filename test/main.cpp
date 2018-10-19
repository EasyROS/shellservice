#include"../sys_bind/sys_bind.hpp"
#include"../sys_tree/sys_tree.hpp"

class walk {
public:
    walk() {
        init();
    }

    void init() {
        bind *binding = new bind();
        binding->root_tree("walk");

        this->binding = binding;
    }

    bind *binding;
};

class test_1 {
public:
    test_1() {
        init();
        add();
    }

    void init() {
        bind *binding = new bind();
        binding->root_tree("test_1");

        this->binding = binding;
    }

    void add() {

    }

    bind *binding;
};

class test {
public:
    test() {
        init();
        add();
    }

    void init() {
        bind *binding = new bind();
        binding->root_tree("test");

        this->binding = binding;
    }

    void add() {
        test_1 *t = new test_1();
        t->binding->bind_tree(t->binding->tr, binding->it);
    }

    bind *binding;
};


class root {
public:
    root() {
        init();
        add();
    }

    void init() {
        bind *binding = new bind();
        binding->root_tree("root");

        this->binding = binding;
    }

    void add() {
        walk *w = new walk();
        w->binding->bind_tree(w->binding->tr, binding->it);

        test *t = new test();
        t->binding->bind_tree(t->binding->tr, binding->it);
    }

    bind *binding;
};

int main() {
    root *r = new root();
    bind *root = r->binding;

    cout << "shell test is running" << endl;

    cout << root->n->name << root->tr->root->name << "\t root\n"
         << root->n->children.size() << "\t size" << endl;
    return 0;
}
