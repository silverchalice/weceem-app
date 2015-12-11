package com.iskbiocides.model

class Dealer {

    String company
    String phone
    String contact
    String address
    String address2
    String website
    String email
    String products
    String city
    String zip
    String state

    static constraints = {
        company nullable: false
        phone nullable: true
        contact nullable: true
        address nullable: true
        address2 nullable: true
        website nullable: true
        email nullable: true
        products nullable: true
        state nullable: false
        city nullable: true
        zip nullable: true
    }
}
