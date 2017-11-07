when HTTP_REQUEST {
    set ::domain [HTTP::host]
    set subdomain [string tolower [getfield [HTTP::uri] "/" 2]]
    set subdomainuri [string tolower [getfield [HTTP::uri] "/" 3]]
    if { $subdomain == "store"} {

        if { $subdomainuri == "orders" } {
            HTTP::host [concat "int.$::domain"]
            pool store_pool
        }
        if { $subdomainuri == "products" } {
            HTTP::host [concat "int.$::domain"]
            pool store_pool
        }
        if { $subdomainuri == "customers" } {
            HTTP::host [concat "int.$::domain"]
            pool store_pool
        }
        if { $subdomainuri == "payments" } {
            HTTP::host [concat "int.$::domain"]
            pool store_pool
        }
    }

}
