import com.iskbiocides.model.Dealer
import org.apache.commons.logging.LogFactory
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes
import grails.util.Environment
import grails.util.Holders

import org.weceem.auth.*
import org.weceem.content.*
import org.weceem.files.*

class BootStrap {

    def initialised = false

    def _log = LogFactory.getLog('org.weceem.BootStrap')
    
    def wcmContentRepositoryService
    def elasticSearchService
    def springSecurityService

    def init = {servletContext ->
        def ctx = Holders.grailsApplication.mainContext

        if (!initialised && (Environment.current != Environment.TEST)) {
            if (!CMSRole.findByAuthority('ROLE_USER')) {
                assert new CMSRole(authority: 'ROLE_USER', description: 'User role').save(flush:true)
            }
            if (!CMSRole.findByAuthority('ROLE_ADMIN')) {
                assert new CMSRole(authority: 'ROLE_ADMIN', description: 'Admin role').save(flush:true)
            }

            if (!CMSUser.findByUsername('admin')) {
                assert new CMSUser(username: 'admin', firstName: 'admin', lastName: '',
                        passwd: "${springSecurityService.encodePassword('admin', 'admin')}",
                        email: 'admin@admin.com',
                        enabled: true)
                        .addToAuthorities(CMSRole.findWhere(authority: 'ROLE_ADMIN'))
                        .addToAuthorities(CMSRole.findWhere(authority: 'ROLE_USER'))
                        .save(flush:true)
            } 

            // Only install default space stuff if there isn't one already
            println "Bootstrapping Weceem - there are ${WcmSpace.count()} spaces"
            if (WcmSpace.count() == 0) {
                println "Bootstrapping Weceem - No spaces, will install default"
                initNewInstallation(servletContext)
            }

            elasticSearchService.index()

            // Make sure the upload dirs exist
            def uploadsDir = wcmContentRepositoryService.uploadDir
            if (!uploadsDir.exists()) {
                uploadsDir.mkdirs()
                
                // Make sure the expected FCK upload dirs exist eg <basedir>/Image
                // @todo need to get this list from the FCK editor plugin but its not exposed 
                def fckDirs = ['Image', 'Media']
                fckDirs.each { dir ->
                    def f = new File(uploadsDir, dir)
                    if (!f.exists()) {
                        f.mkdirs()
                    }
                }
            }
            
            // Stop dev-mode reloads triggering duplicate data
            initialised = true
        }

        //add initial dealer record

        if(!Dealer.list().size()) {
            println "CREATING INITIAL DEALER..."
            new Dealer(company: 'BLAIRSTOWN DISTRIBUTORS',
                    phone: '800-524-1093',
                    website: 'www.blairstowndistributors.com',
                    products: 'WOODguard, WOODguard XL, WOODguard SWO, BEE Gone', state: 'AZ').save flush: true
        }


    }
    
    private initNewInstallation(context) {
        def spc = new WcmSpace(name: 'weceem')
        assert spc.save()

        def f = File.createTempFile("default-context-import", null)
        def res = context.getResourceAsStream('/WEB-INF/default-weceem-site.zip')
        assert res
        f.withOutputStream { os ->
            os << res
        } 
        def svc = context.getAttribute(GrailsApplicationAttributes.APPLICATION_CONTEXT).getBean('importExportService')
        
        try {
            svc.importSpace(spc, 'simpleSpaceImporter', f)
        } catch (Throwable t) {
            println "Unable to import default space"
            t.printStackTrace()
        }
            
    }

    def destroy = {
    }
}
