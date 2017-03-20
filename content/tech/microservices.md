title=microservices
date=2013-09-24
type=page
status=published
~~~~~~

## From Monolith to Agile Microservices

Traditional application development borrowed on our other building techniques like buildings where we had **architects** spend considerable time creating designs.

Then skilled crafts men/persons would turn those designs into implementations

## Castles in the Age of Cannons

Traditional software architecture was build was built in an age of main frames and systems that were to last years with incremental updates.

The modern business landscape is no longer a castle on the hill rather it is a network of business inter-changing data and services.

The music business that used to be a traditional manufacturing chain from recording to disc (vinyl or cd) has now evolved to a network of distribution and data from streaming channels to host of options to play, buy or interact.

![Music Network]( /images/tech/businesNetwork.png "Music Business Network")

These networks are constantly changing, splitting and evolving. As a result we need a more dynamic development and architectural approach. This has of recent years become the creation of small independent services that adapt quickly to internal and external conditions. These small servies are termed **microservies**

## Microservies 

An architectural approach to developing a single application as a suite of small individually deployable services.

The microservice architectural style is an approach to developing a single application
* a suite of small services
* each services runs in its own process and communicating with lightweight mechanisms, typically HTTP/Rest

These services are built around business capabilities and automatically deployed.

The architecture avoid a central single points of failure with minimum of centralized management of these services.
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


## Realitech  Microservices - Designed for Change

With our strong tradition in media, ecommerce and finTech etc. Realitech has been at the forefront of the pressures to change, adapt and provide new services faster.

![Market Map](/images/tech/MarketMap.png "Market Map")

We adopt a number of process and technical practices

Process:
* Cloud Services adopt matrix - can we adopt ready built services
* Risk Assessment - Risk is a fact of life on all projects. We use a **"Impact and likelihood" methodology to actively manage risk.
* **Establish Ownership** - Microservices are standalone services that can be built, deployed and maintained in isolation from other services and systems. Because of their small scope and separated nature, teams are enabled to take full responsibility for services and thus our product. Amazon termed this
**“You build it, you run it”**


##  Revenue Generating Refactoring

Enterprise clients facing a large legacy install base are also facing the increasing costs of refactoring as changes are delayed.

We have found these organisations are sitting on
* high value data lakes of business and operational data
* areas of excellence in operation and delivery that can be valuable business units in themselves.

As a preference we provide an open source **api-manager** that can monetize the existing services as well as add new services.

**Liberate not Liquidate**

The business then has the opportunity to liberate valuable parts of the organisation and integrate it internally and B2B via the Api management.

![Api Manager](/images/tech/ApiManager.png "Api Manager" )

As a business we can focus on introducing the highest value services and monitise
many of the legacy implementation either with the existing code base that often has valuable business rules or with new microservices or off the shelf cloud services


## Links and Reference
Lewis/Fowler: http://martinfowler.com/articles/microservices.html
