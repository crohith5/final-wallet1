<?php
session_start();
if(!isset($_SESSION['examsection'])) {
  echo "You don't have permission";
  exit();
}

 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>ExamSection home Page</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
      tr th:not(:first-child),td {
        max-width: 70px;
      }
      tr input {
        min-width: 10px;
        max-width: 100%;
        width: 100%;
      }
    </style>
  </head>
  <body>
    <?php
      include 'examsection_header.php';
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
                <h4 class="glyphicon glyphicon-arrow-right">Be careful while enterig the exam-id it will have to followed by "year-sem reg/sup regulation(ex 1-1 reg r13)"</h4>
                <h4 class="glyphicon glyphicon-arrow-right">Check all the details in conformation page pefore submit to notification to students</h4>
                <h4 class="glyphicon glyphicon-arrow-right">Delete the exam notification after completing the notification time</h4>
                <h4 class="glyphicon glyphicon-arrow-right">Print or Downlode the exam fee paid student details  according to the requirment by using coloum wise searching option </h4>
                <h4 class="glyphicon glyphicon-arrow-right">Conform that you are logout or not after completiong your work</h4>
            </div>
        </section>
    </div>
     <?php
        if(array_key_exists('infomsg',$_GET)) {
            printf("<div class='alert alert-success'>
                %s
            </div>",$_GET['infomsg']);
        }
         if(array_key_exists('errormsg',$_GET)) {
             printf("<div class='alert alert-danger'>
                    %s
                </div>",$_GET['errormsg']);
         }
     ?>
    <!-- Put some content here -->
    <script src="js/jquery.min.js"></script>
  <script>
      $(document).ready(function() {
          $(".alert").delay(2000).slideUp(200, function() {
              $(this).alert('close');
          });
      });
  </script>
  </body>
</html>
