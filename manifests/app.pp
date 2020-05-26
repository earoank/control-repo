node "node1" {

notify{"*****Node1 block****":}


include base 
class {'::tomcat':

user =>     "tomcat",
group =>   "tomcat",
service_state => "running",
}

tomcat::deploy{"sample":
deploy_url => "https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war",

}

}

node default {
notify{"Default block":}
include base
}

node "node2" {

notify{"*****Node2 block****":}


include base 
class {'::tomcat':

user =>     "tomcat",
group =>   "tomcat",
service_state => "running",
}

tomcat::deploy{"sample":
deploy_url => "https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war",

}

}