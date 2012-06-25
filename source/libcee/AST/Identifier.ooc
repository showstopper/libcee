import Node

/**
 * An Identifier is a node that is basically used everywhere.
 * It simply holds a String value that represents it.
 * Variable and type names are examples of Identifiers.
 * @author Alexandros Naskos (shamanas)
 */
Identifier: class extends Node {
    value: String

    /**
     * Initializes an Identifier with give value
     */
    init: func(=value) {}

    toString: func -> String { value }
}

