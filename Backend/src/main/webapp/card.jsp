<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Card</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
    <!-- Das neueste kompilierte und minimierte CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Optionales Theme -->
    <%--    TODO: Fix the version--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Das neueste kompilierte und minimierte JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</head>
<body>
<!-- Header -->
<div class="container-fluid headerbg">
    <!-- table for the top: logo, searchbar, card -->
    <div class="row d-flex align-items-center">
        <div class="col-md-4">
            <img src="Logo/Logo3.png" id="logo">
        </div>

        <div class="col-md-4">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Suche nach...">
                <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Los!</button>
                    </span>
            </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->

        <div class="col-md-4">
            <input type=button value="Einkaufswagen" onclick="window.location.href='card.jsp';" class="pull-right"/>
        </div>
    </div>
</div>
<!-- !Header -->

<!-- Navbar -->
<nav class="navbar navbar-expand-sm sticky-top primary-color topnav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Prozessoren</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Arbeitsspecher</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Festplatten</a>
        </li>
        <li class="nav-item pull-right">
            <a class="nav-link" href="Kontakt.jsp">Kontakt</a>
        </li>
    </ul>
</nav>
<!-- !Navbar -->

<div class="platzhalter"></div>
<!--Table -->

<div class="container">
    <h2>Ihr Einkaufswagen</h2>
    <div class="platzhalter"></div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Position</th>
            <th>Produkt</th>
            <th>Stückzahl</th>
            <th>Preis</th>
        </tr>
        </thead>

        <tr id="copyme">
            <td id="position"></td>
            <td id="product"></td>
            <td id="count"></td>
            <td id="price"></td>
        </tr>

    </table>
</div>
<br><br>


<!-- Table-->
<div class="platzhalter"></div>
<!--Payment and delivery adress-->

<div class="container">


    <!--Payment-->
    <h2>Angaben</h2>
    <div class="platzhalter"></div>
    <form method="post" action="Order.jsp">
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input id="Email" type="email" class="form-control" placeholder="Email" name="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Firstname:</label>
            <div class="col-sm-10">
                <input id ="Firstname" type="input" class="form-control" placeholder="Firstname" name="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Lastname:</label>
            <div class="col-sm-10">
                <input id ="Lastname" type="input" class="form-control" placeholder="Lastname" name="email">
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-sm-2" >Address:</label>
            <div class="col-sm-10">
                <input id ="Address" type="input" class="form-control" placeholder="Address" name="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" >City:</label>
            <div class="col-sm-10">
                <input id ="City" type="input" class="form-control" placeholder="City" name="email">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" >Payment</label>
            <select id ="Payment" class="form-control col-sm-10">
                <option>Paypal</option>
                <option>VISA</option>
                <option>Master</option>
                <option>Bitcoin</option>
            </select>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label><input type="checkbox" name="remember">Email und Passwort merken</label>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Bestellen</button>
            </div>
        </div>
    </form>
</div>
<!--Payment-->

<hr class="featurette-divider">

<!--Payment and delivery adress-->

<!-- Footer -->
<footer class="page-footer font-small blue pt-4 primary-color">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-6 mt-md-0 mt-3">

                <!-- Content -->
                <h5 class="text-uppercase">Hardware Electronics</h5>
                <p>Besuchen Sie auch unsere social Media Seiten.</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Social Media</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="http://www.facebook.de">Facebook</a>
                    </li>
                    <li>
                        <a href="http://www.Twitter.de">Twitter</a>
                    </li>
                    <li>
                        <a href="http://www.instagram.de">Instagram</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-3 mb-md-0 mb-3">

                <!-- Links -->
                <h5 class="text-uppercase">Über uns</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="http://www.google.de">Impressum</a>
                    </li>
                    <li>
                        <a href="http://www.google.de">Datenschutzerklärung</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3 sec-color">© 2018 Copyright:
        <a href="http://google.de"> HardwareElectronics.com</a>
    </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->

</body>

<script>
    $(onDocumentReady);

    function onDocumentReady() {
        load();
        //cart();
    }
    function load() {
                //Hier solltest du jetzt die Daten aus der Session ziehen...
                // Diese Müssen dann in die formulare mit den entsprechenden Tags geschrieben werden..
                // Hier noch eine methode um die tabellenzeile so oft wie benötigt zu kopieren:
                // benötigt noch ein element mit der id pasteme, wo die zeilen reinkopiert werden sollen.. evtl das <table>?
        var k=0;
        for .....
        if (k!=1) {
            console.log("passt")
            var itm = document.getElementById("copyMe");
            var cln = itm.cloneNode(true);
            document.getElementById("pasteMe").appendChild(cln);
        }

            .fail(function(jqXHR, statusText, error) {
                var errorMsg = "Response Code: " + jqXHR.status + " - Fehlermeldung: " + jqXHR.responseText;
                console.log(errorMsg);
                $("#ziel").text("Es ist ein Fehler aufgetreten");
            });
    }

    /*function sub() {
        var email = document.getElementById("Email").value;
        var fn = document.getElementById("Firstname").value;
        var ln = document.getElementById("Lastname").value;
        var addr = document.getElementById("Address").value;
        var city= document.getElementById("City").value;
        var paym = document.getElementById("Payment").text;

        var customer = {
            pemail: email,
            pfn: fn,
            pln: ln,
            paddr: addr,
            pcity: city
        };

        $.post("addcustomer", customer);

    };*/


</script>
</html>