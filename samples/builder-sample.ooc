use libcee
import libcee/AST/[VariableDeclaration, Builder, Node, Expression]

vDecl(ident("int") as Node => ident("foo"), ident("bar") as Expression) toString() println()
