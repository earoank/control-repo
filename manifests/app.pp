node "node3" {

notify{"*****Node3 block****":}


#include base 
class {'::tomcat':

user =>     "tomcat",
group =>   "tomcat",
service_state => "running",
}

tomcat::deploy{"sample":
deploy_url => "https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war",

}

}
