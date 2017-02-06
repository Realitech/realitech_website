title=microservices
date=2013-09-24
type=page
status=published
~~~~~~

An architectural approach to developing a single application as a suite of small individually deployable services.
The microservice architectural style is an approach to developing a single application
* a suite of small services 
* each services runs in its own process and communicating with lightweight mechanisms, typically HTTP/Rest

These services are built around business capabilities and auotmatically deployed. 

The architecture avoid a central single points of failure with mininum of centralized management of these services.
The standarised communication mechanisms allows a mix of languages and technologies. 


## Some Key Properties 

* The services are easy to deploy and replace
* Services are organized around capabilities, e.g. user interface front-end, recommendation, logistics, billing, etc.
* Services can be implemented using different programming languages, databases, hardware and software environment, depending on what fits best.
* Architectures are symmetrical rather than hierarchical (producer/consumer).

Philosophy:

* The services are small - fine-grained to perform a single function.
* The organization culture should embrace automation of deployment and
* testing. This eases the burden on management and operations.
* The culture and design principles should embrace failure and faults, similar to anti-fragile systems.
* The services are elastic, resilient, composable, minimal, and complete.


## Links and Reference 
Lewis/Fowler: http://martinfowler.com/articles/microservices.html
