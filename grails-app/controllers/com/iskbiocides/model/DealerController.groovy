package com.iskbiocides.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DealerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    static DEALER_STATES = ['AL': 'Alabama',
             'AK': 'Alaska',
             'AZ': 'Arizona',
             'AR': 'Arkansas',
             'CA': 'California',
             'CO': 'Colorado',
             'CT': 'Connecticut',
             'DE': 'Delaware',
             'DC': 'District Of Columbia',
             'FL': 'Florida',
             'GA': 'Georgia',
             'HI': 'Hawaii',
             'ID': 'Idaho',
             'IL': 'Illinois',
             'IN': 'Indiana',
             'IA': 'Iowa',
             'KS': 'Kansas',
             'KY': 'Kentucky',
             'LA': 'Louisiana',
             'ME': 'Maine',
             'MD': 'Maryland',
             'MA': 'Massachusetts',
             'MI': 'Michigan',
             'MN': 'Minnesota',
             'MS': 'Mississippi',
             'MO': 'Missouri',
             'MT': 'Montana',
             'NE': 'Nebraska',
             'NV': 'Nevada',
             'NH': 'New Hampshire',
             'NJ': 'New Jersey',
             'NM': 'New Mexico',
             'NY': 'New York',
             'NC': 'North Carolina',
             'ND': 'North Dakota',
             'OH': 'Ohio',
             'OK': 'Oklahoma',
             'OR': 'Oregon',
             'PA': 'Pennsylvania',
             'RI': 'Rhode Island',
             'SC': 'South Carolina',
             'SD': 'South Dakota',
             'TN': 'Tennessee',
             'TX': 'Texas',
             'UT': 'Utah',
             'VT': 'Vermont',
             'VA': 'Virginia',
             'WA': 'Washington',
             'WV': 'West Virginia',
             'WI': 'Wisconsin',
             'WY': 'Wyoming']

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dealer.list(params), model:[dealerCount: Dealer.count()]
    }

    def show(Dealer dealer) {
        respond dealer
    }

    def create() {
        respond new Dealer(params)
    }

    @Transactional
    def save(Dealer dealer) {
        if (dealer == null) {
            notFound()
            return
        }

        if (dealer.hasErrors()) {
            respond dealer.errors, view:'create'
            return
        }

        dealer.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dealer.label', default: 'Dealer'), dealer.id])
                redirect dealer
            }
            '*' { respond dealer, [status: CREATED] }
        }
    }

    def edit(Dealer dealer) {
        respond dealer
    }

    @Transactional
    def update(Dealer dealer) {
        if (dealer == null) {
            notFound()
            return
        }

        if (dealer.hasErrors()) {
            respond dealer.errors, view:'edit'
            return
        }

        dealer.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dealer.label', default: 'Dealer'), dealer.id])
                redirect dealer
            }
            '*'{ respond dealer, [status: OK] }
        }
    }

    @Transactional
    def delete(Dealer dealer) {

        if (dealer == null) {
            notFound()
            return
        }

        dealer.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dealer.label', default: 'Dealer'), dealer.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dealer.label', default: 'Dealer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def upload() {

    }

    def uploadDealers() {
        def file = request.getFile('file')
        def count = 0
        def updatedIds = []

        if(file) {
            file.inputStream.toCsvReader(['separatorChar':',', 'skipLines': 1]).eachLine { line ->
                //We require the Company and State fields
                if(line[1] && line[5]) {
                    def dealer = Dealer.findByCompany(line[1])
                    def properties = [
                            company:    line[1],
                            address1:   line[2],
                            address2:   line[3],
                            city:       line[4],
                            state:      line[5],
                            zip:        line[6],
                            phone:      line[7],
                            contact:    line[8],
                            website:    line[9],
                            email:      line[10]
                    ]

                    def products = ''

                    //WoodGuard
                    if(line[11] == 'TRUE') products += "WOODguard, "
                    //Swedish
                    if(line[12] == 'TRUE' || line[17] == 'TRUE') products += "WOODguard SWO, "
                    //NaturalHome
                    if(line[13] == 'TRUE') products += "Natural Home, "
                    //woodguarditf
                    if(line[15] == 'TRUE') products += "WOODGuard ITF, "
                    //beegone
                    if(line[16] == 'TRUE') products += "BeeGone, "
                    //woodoil
                    //if(line[17] == 'TRUE') products += "Wood Oil, "
                    //SurfacePrep
                    if(line[18] == 'TRUE') products += "Surface Prep, "
                    //StaBrite
                    if(line[19] == 'TRUE') products += "Sta Brite R, "
                    //WoodGuardxl
                    if(line[18] == 'TRUE') products += "WOODGuard XL"

                    properties.products = products.replaceAll(' ,$', '')

                    if(!dealer) {
                        println "Importing new dealer... ${properties.company}"

                        dealer = new Dealer(properties)

                    } else {
                        println "Updating dealer... ${properties.company}"

                        dealer.properties = properties
                    }

                    if(!dealer.save(flush: true))
                        dealer.errors.allErrors.each { println it }
                    else {
                        count++
                        updatedIds << dealer.id
                    }
                } else {
                    println "Missing required fields. Skipping..."
                }
            }

            //Remove any dealers not in our list

            Dealer.findAllByIdNotInList(updatedIds).each { oldDealer ->
                println "Deleting dealer ${oldDealer.company} for ${oldDealer.state}"
                oldDealer.delete()
            }
        }

        flash.message = "Imported ${count} dealers from uploaded file"
        redirect uri: '/admin/repository/Default/treeTable'
    }

    def dealersForState() {
        println "DealerController:dealersForState: ${params.state}"

        def dealers = []
        def state = params.state?.toUpperCase()

        if(DEALER_STATES."${params.state}")
            dealers = Dealer.findAllByState(state, [sort: 'name'])

        render template: 'results', model: [state: DEALER_STATES."${state}", dealers: dealers]
    }

}


































