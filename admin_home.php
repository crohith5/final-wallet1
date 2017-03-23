<?php
session_start();
if(!isset($_SESSION['admin'])) {
    echo "You don't have permission";
    exit();
}
?>
<html>
<head>
    <meta charset="utf-8">
    <title>Admin home Page</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<?php
 include 'admin_header.php'
?>
<style>
    h2 {
        background: rgb(255, 113, 15);
        background: -moz-linear-gradient(90deg, rgb(255, 113, 15) 15%, rgb(251, 164, 105) 85%);
        background: -webkit-linear-gradient(90deg, rgb(255, 113, 15) 15%, rgb(251, 164, 105) 85%);
        background: -o-linear-gradient(90deg, rgb(255, 113, 15) 15%, rgb(251, 164, 105) 85%);
        background: -ms-linear-gradient(90deg, rgb(255, 113, 15) 15%, rgb(251, 164, 105) 85%);
        background: linear-gradient(180deg, rgb(255, 113, 15) 15%, rgb(251, 164, 105) 85%);
        -moz-border-radius-topleft: 15px;
        -webkit-border-top-left-radius: 15px;
        border-top-left-radius: 15px;
        -moz-border-radius-topright: 15px;
        -webkit-border-top-right-radius: 15px;
        border-top-right-radius: 15px;
        font-size: 1.375em; /* 22px/16px */
        line-height: 1.5;
        text-align: center;
        text-transform: uppercase;
        padding-top: .25em;
        color: #888;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
        font-weight: normal;
    }
    section.featured {
        width: 97.9116%; /* 940/960 */
        background: #F7F9F9;
        -webkit-border-radius: 15px;
        -moz-border-radius: 15px;
        border-radius: 15px;
        -webkit-box-shadow: 4px 3px 3px 0px rgba(0, 0, 0, 0.15);
        -moz-box-shadow:    4px 3px 3px 0px rgba(0, 0, 0, 0.15);
        box-shadow:         4px 3px 3px 0px rgba(0, 0, 0, 0.15);
        margin: 2em auto;
        clear: both;
    }

</style>
<div>
    <section class="featured">
        <h2>Instructions</h2>
        <div class="carousel">
            <h4 class="glyphicon glyphicon-arrow-right">Accountent can make modification no the student wallet details. </h4>
            <h4 class="glyphicon glyphicon-arrow-right">Conform that the id of accountent is deleted after removing the person from the accountent post.</h4>
            <h4 class="glyphicon glyphicon-arrow-right">The deleted accountent id can be alloted to another person but be careful that the accountent id shoud be alloted to another person after deletion the previous person only.</h4>
            <h4 class="glyphicon glyphicon-arrow-right">Do not transfer the accountent id without deleting the old person it will may cause security errors like password should be same and known to old accountent person also.</h4>
            <h4 class="glyphicon glyphicon-arrow-right">Students can identify the accountent person through his id that who make modefication in his wallet account.</h4>
        </div>
    </section>
</div>
</body>
</html>
