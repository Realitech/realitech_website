<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Cache-control" content="public">
    <meta http-equiv="Age" content="86400">
    <meta http-equiv="Content-Encoding" content=”gzip”/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>Realitech</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="alternative" href="<%- theme.rss %>" title="<%= config.title %>" type="application/atom+xml">
    <link rel="icon" href="<%- theme.favicon %>">
    <link href="//fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet" type="text/css">

    <!-- Bootstrap  -->
    <link type="text/css" rel="stylesheet"
          href="//cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.4/custom/bootstrap.min.css">
    <!-- web font  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,800" rel="stylesheet" type="text/css">
    <!-- plugin css  -->
    <link rel="stylesheet" type="text/css"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/animate.css"/>
    <link rel="stylesheet" type="text/css"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/magnific-popup.css"/>
    <link type="text/css" rel="stylesheet"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/isotype_style.css">
    <link rel="stylesheet" type="text/css"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/flexslider.css"/>
    <link rel="stylesheet" type="text/css"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/pageslide/jquery.pageslide.css"/>
    <!-- Owl carousel-->
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/owl.carousel/owl.carousel.css">
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/owl.carousel/owl.theme.css">
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/owl.carousel/owl.transitions.css">
    <link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/fontawesome/css/font-awesome.css"/>
    <!-- Custom css -->
    <link type="text/css" rel="stylesheet"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/layout.css">
    <link type="text/css" id="colors" rel="stylesheet"
          href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/colors.css">
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

</head>
<body data-spy="scroll" data-target="#scrollTarget" data-offset="150">
    <div id="wrap">
   