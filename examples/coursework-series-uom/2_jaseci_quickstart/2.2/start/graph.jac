edge married;
edge child;
edge member;

node person {
    has id;
    has family_id;
    has name;
    has date_of_birth;
    has profession;
    has gender;
    has deceased;
    has parents;
    has children;
    has spouse;
}
node family_root{
    has id;
    has family_name;
}

graph family_tree {
    has anchor family_root;
    spawn {
        family_root = spawn node::family_root;
    }
}