import Node, Statement, Expression, Identifier

/**
 * Represents the different C storage classes
 */
Storage: enum {
    _auto,
    _static,
    _extern,
    _register

    toString: func -> String {
        // We ignore auto storage
        match this {
            case Storage _static   => "static"
            case Storage _extern   => "extern"
            case Storage _register => "register"
            case                   => ""
        }
    }
}

/**
 * Represents a C variable declaration
 * @author Alexandros Naskos (shamanas)
 */
VariableDeclaration: class extends Statement {
    /**
     * The storage class of the current variable declaration
     * If unsure, use Storage _auto
     */
    storage := Storage _auto

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
     * Initializes the variable declaration given its type and its identifier
     */
    init: func ~typeName (=type, =name) {}

    /**
     * Initializes the variable declaration given its type and its identifier as well as its storage class
     */
    init: func ~typeNameStorage (=type, =name, =storage) {}

    /**
     * Initializes a variable declaration with a default value
     */
    init: func ~typeNameValue (=type, =name, =value) {}

    /**
     * Initializes a variable declaration with a default value as well as its storage class
     */
    init: func ~typeNameValueStorage (=type, =name, =value, =storage) {}

    toString: func -> String {
        storage toString() + match value {
            case null => "#{type} #{name};"
            case      => "#{type} #{name} = #{value};"
        }
    }
}

