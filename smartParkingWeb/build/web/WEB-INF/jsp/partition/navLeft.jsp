<%-- 
    Document   : navLeft
    Created on : Oct 31, 2018, 11:11:00 AM
    Author     : linhph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- NAV LEFT -->
<div class="col-xs-4 col-sm-2 col-md-3 col-lg-3 well navLeft">
    <h3> My Account</h3>
    <hr>
    <ul class="nav nav-pills nav-stacked selectCategoryMenu">
        <!-- FrontEnd said : add class .active to active menu you choose -->
        <li id="sellNewProduct" class="selectCategory"> <a href="/sellNewProduct" class="glyphicon glyphicon-open cName"> Sell New Product</a></li>
        <li id="userInfo" class="selectCategory"> <a href="/userInfo" class="glyphicon glyphicon-cog cName"> Personal Setting</a></li>
        <li id="manageSales" class="selectCategory"> <a href="manageSales" class="glyphicon glyphicon-tag cName"> Manage Sales</a></li>
        <li id="managePurchases" class="selectCategory"> <a href="/managePurchases" class="glyphicon glyphicon-shopping-cart cName"> Manage Purchases</a></li>
        <li class="selectCategory"> <a href="#" class="glyphicon glyphicon-envelope cName"> Contact Admin </a></li>

    </ul>
</div>
<!-- END NAV LEFT -->

<script>
    
    $('#menu').addClass('active');
    
</script>