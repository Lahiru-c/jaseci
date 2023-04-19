import {*} with "./graph.jac";

walker run {
    root {
        family_tree = spawn here ++> graph::family_tree;
        father = spawn node::person(
            id = "6743482333V",
            name = "John",
            date_of_birth = "1967-01-01",
            profession = "Engineer",
            gender = "Male"
        );
        family_tree ++> father;
        mother = spawn node::person(
            id = "694343433V",
            name = "Mary",
            date_of_birth = "1969-01-01",
            profession = "Architecture",
            gender = "Female"
        );
        family_tree ++> mother;
        father <+[married]+> mother;
        son = spawn node::person(
            id = "9643482333V",
            name = "George",
            date_of_birth = "1996-01-01",
            profession = "Student",
            gender = "Male"
        );
        family_tree ++> son;
        father +[child]+> son;
        mother +[child]+> son;
        daughter = spawn node::person(
            id = "9643482453V",
            name = "Natali",
            date_of_birth = "1998-02-01",
            profession = "Student",
            gender = "Female"
        );
        family_tree ++> daughter;
        father +[child]+> daughter;
        mother +[child]+> daughter;
        son <+[siblings]+> daughter;
        grandfather = spawn node::person(
            id = "5643482895V",
            name = "Bill",
            date_of_birth = "1956-05-01",
            profession = "Farmer",
            gender = "Male"
        );
        family_tree ++> grandfather;
        grandfather +[child]+> father;
        grandfather +[grandchild]+> son;
        grandfather +[grandchild]+> daughter;
    }
}