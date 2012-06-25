import Node, Statement, Expression, Identifier

/**
 * Represents a C variable declaration
 * @author Alexandros Naskos (shamanas)
 */
VariableDeclaration: class extends Statement {
    /**
     * The type of the variable declaration.
     * Is a Node because it can be something other than an Identifier
     * For example an anonymous structure declaration
     */
    type: Node

    /**
     * The name of the declared variable
     */
    name: Identifier

    /**
     * Default value of the variable
     */
    value: Expression

    /**
     * Initializes the variable declaration given its type and the identifier that is its name
     */
    init: func(=type, =name) {}

    /**
     * Initializes a variable declaration with a default value
     */
    init: func(=type, =name, =value) {}

    toString: func -> String {
        match value {
            case null => "#{type} #{name};"
            case      => "#{type} #{name} = #{value};"
        }
    }
}

