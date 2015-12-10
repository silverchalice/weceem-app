package com.iskbiocides.model

class Dealer {

    String name
    String phone
    String contact
    String address
    String website
    String email
    String products
    String state

    static constraints = {
        name nullable: false
        phone nullable: true
        contact nullable: true
        address nullable: true
        website nullable: true
        email nullable: true
        products nullable: true
        state nullable: false
    }
}
