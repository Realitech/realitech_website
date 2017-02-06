<#include "header.ftl">

<div id="globalWrapper" class="localscroll">
    <!-- header -->
    <header id="mainHeader" class="navbar-fixed-top" role="banner">
        <div class="container">
            <nav class="navbar navbar-default scrollMenu" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/index.html"><img width="180px" src="/images/realitech_logo.png"
                                                                    alt="Realitech Logo"/></a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse" id="scrollTarget">
                    <ul class="nav navbar-nav pull-right">
                        <li class=""><a href="/#home"><i class="fa fa-home"></i>Home</a></li>
                        <li class=""><a href="/#news"><i class="fa fa-lightbulb-o"></i>News</a></li>
                        <li class="active"><a href="/#services"><i class="fa fa-thumbs-up"></i>Services</a></li>
                        <!--<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"-->
                        <!--aria-expanded="false"><span class="caret"></span></a>-->
                        <!--<ul class="dropdown-menu" role="menu">-->
                        <!--<li class="customMenu"><a href="#">Mule Integration</a></li>-->
                        <!--<li class="customMenu"><a href="#">Open Source</a></li>-->
                        <!--<li class="customMenu"><a href="#">Java</a></li>-->
                        <!--<li class="customMenu"><a href="#">Migration</a></li>-->
                        <!--<li class="customMenu"><a href="#">DevOps</a></li>-->
                        <!--<li class="customMenu"><a href="#">Testing</a></li>-->
                        <!--<li class="customMenu"><a href="#">Db Design</a></li>-->
                        <!--<li class="customMenu"><a href="#">Big Data</a></li>-->
                        <!--<li class="customMenu"><a href="#">Micro Services</a></li>-->
                        <!--<li class="customMenu"><a href="#">Apis</a></li>-->
                        <!--</ul>-->
                        <li><a href="/#about"><i class="fa fa-question"></i>About Us</a></li>
                        <li><a href="/industries"><i class="fa fa-paperclip"></i>Industries</a></li>
                        <li><a href="/#works"><i class="fa fa-align-justify"></i>Works</a></li>
                        <li><a href="/#team"><i class="fa fa-users"></i>Our Team</a></li>
                        <li><a href="/#contactSlice"><i class="fa fa-mail-reply"></i>Contact</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>


    <div class="container" style="padding-top: 30px">
    <#--<#include "menu.ftl">-->

        <div class="page-header">
            <h1><#escape x as x?xml>${content.title}</#escape></h1>
        </div>

        <p><em>${content.date?string("dd MMMM yyyy")}</em></p>

        <p>${content.body}</p>

        <hr/>

<#include "footer.ftl">