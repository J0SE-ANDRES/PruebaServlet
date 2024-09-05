<%-- 
    Document   : principal
    Created on : 5/09/2024, 12:00:16 p. m.
    Author     : Jose Torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>

        <!-- Estilos -->
        <link rel="stylesheet" href="Styles/PrincipalStyle.css" type="text/css"/>

        <!-- Iconos de https://cdnjs.com/libraries/font-awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>

        <%
            if(session.getAttribute("e-mail") == null) {
                response.sendRedirect("index.html");
                return;
            }
        %>

        <section id="header">


            <!-- Menu izquierdo-->
            <div>
                <ul id="navbarizq">
                    <a href="#"><img src="Images/logo.webp" class="logo" alt="logo" width="180px"></a>
                    <li><a href="index.html" class="active">Principal</a></li>
                    <li><a href="#">Nuestra Historia</a></li>
                    <li><a href="#">Acerca de</a></li>
                    <li><a href="#">Contactenos</a></li>
                </ul>
            </div>

            <!-- Menu derecho-->
            <div>
                <ul id="navbardere">               
                    <!--Aca colocar el btn "Ingresar"-->
                    <li><a href="#" class="ingresar">Welcome</a></li>
                    <li><a href="#" class="carrito"><i class="fa-solid fa-cart-shopping"></i></a></li>
                </ul>
            </div>


        </section>

        <div class="container">
            <section id="hero">
                <h1>Kits de Regalo</h1>
                <p>Disfruta de nuestros descuentos especiales para empresas</p>
            </section>

            <section id="producto1" class="section-p1">
                <div class="pro-container">
                    <div class="pro">

                        <img src="Images/producto1.jpg" alt="crema y jabon liquido">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo Jabón Líquido y Crema Humectante Lemaître</a></h5>
                            </span>
                            <h4>De $125.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto2.jpg" alt="jabones en barra">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo 6 Jabones de Glicerina</a></h5>
                            </span>
                            <h4>De $91.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto3.jpg" alt="jabon liquido y jabones de gliserina">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo Jabón Líquido y 2 Jabones de Glicerina Lemaître</a></h5>
                            </span>
                            <h4>De $87.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto4.jpg" alt="gel de ducha y crema humectante">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo Gel de Ducha y Crema Humectante 240ml</a></h5>
                            </span>
                            <h4>De $79.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto5.jpg" alt="special edition">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit Edición Especial Cartagena 1914</a></h5>
                            </span>
                            <h4>De $37.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto6.jpg" alt="jabon de gliserina y gel de ducha">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo 2 Jabones de Glicerina + Gel de Ducha Lemaître</a></h5>
                            </span>
                            <h4>De $67.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                    <div class="pro">

                        <img src="Images/producto7.jpg" alt="gel de ducha, locion refrescante y jabon de gliserina">
                        <div class="description">
                            <!--EDITAR ESTE SPAN MAS ADELANTE-->
                            <span>Lemaitre(description)</span>
                            <span class="name"><h5>
                                    <a href="#">Kit de Regalo de Gel de Ducha + Loción Refrescante + Jabón de Glicerina</a></h5>
                            </span>
                            <h4>De $62.000</h4>
                        </div>

                        <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                </div>
            </section>
        </div>

        <!--FOOTER TEMPORAL, ADAPTAR DESPUES-->
        <footer class="container">
            <hr>
            <img src="Images/logo.webp" alt="Lemaitre Logo" width="250PX">
            <p style="color: #888888; font-size: 10px;">Dirección XXX, XXXXXXXXXXX, Mz X Lote X, Oficina XXX, Cartagena, Bolívar</p>
            <div class="social-icons">
                <a href="#" style="color: #736550;"><i class="fa-brands fa-square-twitter"></i></a>
                <a href="#" style="color: #736550;"><i class="fa-brands fa-facebook"></i></a>
                <a href="#" style="color: #736550;"><i class="fa-brands fa-pinterest"></i></a>
                <a href="#" style="color: #736550;"><i class="fa-brands fa-square-instagram"></i></a>
                <a href="#" style="color: #736550;"><i class="fa-solid fa-envelope"></i></a>
            </div>
            <br><hr>
            <p style="color: #888888; font-size: 10px;">© 2024 Lemaitre Perfumería & Jabones S.A.S | Todos los derechos reservados | Created by <b>Jose Torres</b> </p>
        </footer>    

    </body>
</html>
