package grailsmarket

class Category {
    String name
    String type

    @Override
    String toString() {
        return name
    }

    static constraints = {
    }
}
