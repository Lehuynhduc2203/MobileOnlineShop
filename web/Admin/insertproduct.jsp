<%-- 
    Document   : insertbrand
    Created on : Jun 16, 2020, 11:38:58 PM
    Author     : MXGC
--%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="linkBootstrap.jsp"></jsp:include>
        </head>
        <body>


            <section id="container" class="">
                <!--header start-->
            <jsp:include page="header.jsp"></jsp:include>

                <!--sidebar end-->
                <!--main content start-->
                <section id="main-content" >
                    <section class="wrapper site-min-height">
                        <!-- page start-->
                        <section class="panel">

                            <header class="panel-heading">
                                <h3 style="font-family: sans-serif">Products</h3>
                                Product / <u style="font-family: sans-serif">Create</u>
                                <p class="btn-group pull-right" style="font-family: initial"><a href="AdminShowProductServlet">List Products</a></p>

                            </header>
                            <div class="panel-body">
                                <div class="adv-table editable-table ">
                                    <div class="clearfix">
                                        <h3 style="font-family: cursive;color: #003eff">Create New Products</h3>
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#">Print</a></li>
                                                <li><a href="#">Save as PDF</a></li>
                                                <li><a href="#">Export to Excel</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="space15"></div>
                                    <form action="AdminInsertServlet?action=insertproduct" method="post">
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>

                                                <tr>
                                                    <td>Name <b style="color: red">*</b></td>
                                                    <td><input type="text" name="name" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Price <b style="color: red">*</b></td>
                                                    <td><input type="text" name="price" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Promotion</td>
                                                    <td><input type="text" name="promotion" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Description <b style="color: red">*</b></td>

                                                    
                                                         <td>
                                                    <textarea name="description" rows="4" cols="120"></textarea>
                                                </td>

                                                    
                                                </tr>
                                                <tr>
                                                    <td>Category <b style="color: red">*</b></td>
                                                    <td>
                                                        <select name="cateid" required="true">
                                                        <c:forEach items="${list}" var="c">
                                                            <option value="${c.categoriesID}" >${c.categoryName}</option>
                                                        </c:forEach>
                                                    </select>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Brand <b style="color: red">*</b></td>
                                                <td>
                                                    <select id="category" name="brandid" required="true">

                                                        <c:forEach items="${brand}" var="a">
                                                            <option value="${a.brandID}" >${a.brandName}</option>
                                                        </c:forEach>

                                                    </select>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Image</td>
                                                <td>
                                                    <input type="file" name="image" accept="image/products/*"  onchange="showMyImage(this)" />
                                                    <img id="thumbnil" style="width:15%; margin-top:10px;"  src="" alt="image"/>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>Action</td>
                                                <td>
                                                    <select id="action" name="action" required="true">
                                                        <option value="True" >Enable</option>
                                                        <option value="Fale" >Disable</option>
                                                    </select>
                                                </td>

                                            </tr>



                                        </thead>
                                    </table>
                                    <input type="submit" value="Insert" />
                                    <input type="reset" value="Reset" />
                                </form>
                            </div>
                        </div>
                    </section>
                    <!-- page end-->
                </section>
            </section>
            <!--main content end-->
            <!-- Right Slidebar start -->

            <jsp:include page="footer.jsp"></jsp:include>
            </section>
        <jsp:include page="scriptimage.jsp"></jsp:include>
        <jsp:include page="script.jsp"></jsp:include>
         <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
    <script src="js/respond.min.js" ></script>

  <!--right slidebar-->
  <script src="js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>

      <!--script for this page only-->
      <script src="js/editable-table.js"></script>

    </form>
</body>
</html>
