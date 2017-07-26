package grailsmarket

class Product {
    String name
    double price
    int quantity
    Category category
    String status
    String serialNumber
    String manufacturer
    String imagePath

    static constraints = {
        name(blank: false, nullable: false)
        quantity(blank: false, nullable: false)
        status(blank: false, nullable: false)
        serialNumber(blank: false, nullable: false)
        manufacturer(blank: false, nullable: false)
        category()
    }
}
