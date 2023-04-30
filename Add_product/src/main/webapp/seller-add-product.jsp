<%@page import="Model.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="zxx">
 <head>
	<title>Goggles Ecommerce Category Bootstrap responsive Web Template | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Goggles a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/shop.css" type="text/css" />
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
</head>
 <body>
 <%
Seller s = null;
if(session.getAttribute("data")!=null){
	s = (Seller)session.getAttribute("data");
}
else{
	response.sendRedirect("seller-login.jsp");
}
%>
 <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Add Products</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <form action="ProductController" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <input type="hidden" name="sid" class="form-control border-0 py-4"  value="<%=s.getId()%>" />
                            </div>
                            <div class="form-group">
                                <input type="file" name="image" class="form-control border-0 py-4" placeholder="Name" />
                            </div>
                            <div class="form-group">
                                <input type="text" name="pname" class="form-control border-0 py-4" placeholder="Product Name"
                                    required=""  />
                            </div>
                            <div class="form-group">
                                <input type="text" name="pprice" class="form-control border-0 py-4" placeholder="Product Price"
                                    required=""  />
                            </div>
                            <div class="form-group">
                                <input type="text" name="pcategory" class="form-control border-0 py-4" placeholder="Product Category"
                                    required=""  />
                            </div>
                            <div class="form-group">
                                <input type="text" name="pdesc" class="form-control border-0 py-4" placeholder="Product Description"
                                    required=""  />
                            </div>
                           
                           <div>
                                <button class="btn btn-primary btn-block border-0 py-3" value="Upload" name="action" type="submit">Upload</button>
                                
                            </div>
                           
                        </form>
                </div>
            </div>
           
        </div>
    </div>
    </body>