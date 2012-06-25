import Node, Identifier
/*
 * Provides functions and operator overloads used for easier AST creation and manipulation
 * @author Alexandros Naskos (shamanas)
 */

/**
 * Creates an identifier given a String value
 */
ident: func(value: String) -> Identifier {
    Identifier new(value)
}

