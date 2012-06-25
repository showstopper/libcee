/**
 * Base class for all libcee AST nodes
 * @author Alexandros Naskos (shamanas)
 */
Node: abstract class {

    /**
     * Helper property to easily print out nodes \o/
     */
    _: String { get { toString() } }

    /**
     * Returns a string representation of the Node
     */
    toString: abstract func -> String

    /**
     * Returns a special formatted string better fit for debugging
     */
    debugString: func -> String {
        "Node #{this} of type #{class name}"
    }
}

