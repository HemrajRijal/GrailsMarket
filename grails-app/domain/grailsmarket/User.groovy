package grailsmarket

class User {
    String name
    String password
    String role

    static constraints = {
        name(blank: false, nullable: false, minSize: 3)
        password(blank: false, nullable: false, minSize: 3, maxSize: 7)
        role(inList: ['Admin', 'User', 'App', 'Super Admin'], blank: false)
    }

}
