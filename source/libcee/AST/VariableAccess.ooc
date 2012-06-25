import Expression, Identifier

/**
 * Represents a C variable access in the libcee AST
 * Exists because Identifier is not an expression
 * @author Alexandros Naskos (shamanas)
 */
VariableAccess: class extends Expression {
    name: Identifier

    /**
     * Initialize the VariableAccess to its identifier
     */
    init: func(=name) {}

    toString: func -> String { name _ }
}

