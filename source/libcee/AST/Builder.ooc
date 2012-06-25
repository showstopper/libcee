import Node, Identifier, Expression, VariableDeclaration, VariableAccess
/*
 * Provides functions and operator overloads used for easier AST creation and manipulation
 * @author Alexandros Naskos (shamanas)
 */

Pair: class <K, V> {
    left: K
    right: V

    init: func(=left, =right) {}
}

operator => <K, V> (left: K, right: V) -> Pair<K, V> {
    Pair new(left, right)
}

/**
 * Creates an identifier given a String value
 * Example: ident("foo")
 */
ident: func(value: String) -> Identifier {
    Identifier new(value)
}

/**
 * Creates a variable access from an identifier
 * Example: vAcc(ident("bar"))
 */
vAcc: func(value: Identifier) -> VariableAccess {
    VariableAccess new(value)
}

/**
 * Creates a variable access from a String value
 * Example: vAcc("bar")
 */
vAcc: func ~str (value: String) -> VariableAccess {
    vAcc(ident(value))
}

/**
 * Creates a variable declaration
 * Example: vDecl(ident("int") => ident("foo"), ident("bar")) // int foo = bar;
 */
vDecl: func(pair: Pair<Node, Identifier>, value: Expression = null, storage: Storage = Storage _auto) -> VariableDeclaration {
    VariableDeclaration new(pair left as Node, pair right as Identifier, value, storage)
}

