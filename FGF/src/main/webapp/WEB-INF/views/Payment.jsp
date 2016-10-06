<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link href="<c:url value="/resources/css/card.css" />" rel="stylesheet">
</head>
<body  >
<div id="card">
<section class="credit-card visa gr-visa">
        <div class="logo">Visa</div>
        <form action="pay" method="post">
            <h2>Payment Details</h2>

            <ul class="inputs">
                <li>
                    <label>Card Number</label>
                    <input type="text" name="card_number" pattern="[0-9]{13,16}"placeholder="xxxx xxxx xxxx xxxx" class="full gr-input" required />
                </li>
                <li class="expire last">
                    <label>Expiration</label>
                    <input type="number" name="expire_month" placeholder="December (date)" size="10" class="month gr-input" required />
                    <input type="number" name="expire_year" placeholder="year" size="10" class="year gr-input" required />
                    <div class="clearfix"></div>
                </li>
                <li class="cvc-code last">
                    <label>CVC Code</label>
                    <input type="number" name="cvc_code" placeholder="xxx" size="3" class="gr-input" required />
                </li>
                <li><button type="submit" class="btn btn-info">paymant</button></li>
         
            </ul>
        </form>
    </section>
    </div>
</body>
</html>