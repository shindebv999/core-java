<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/aboutUs.css">
</head>
<body>
<div class="container py-3">
  <div class="title h1 text-center">About Bug Tracking Tool</div>
  <!-- Card Start -->
  <div class="card">
    <div class="row ">

      <div class="col-md-7 px-3">
        <div class="card-block px-6">
          <h4 class="card-title">Bug tacking tool  </h4>
          <p class="card-text">
           Bug tracking software provides a repository that explains how to reproduce a bug and how widespread an issue is, and allows a business to separate, prioritize, sequence, and provide communications about different bugs across many projects or applications.
            Bug tracking is the process of logging and monitoring bugs or errors during software testing. It is also referred to as defect tracking or issue tracking. Large systems may have hundreds or thousands of defects. Each needs to be evaluated, monitored and prioritized for debugging. In some cases, bugs may need to be tracked over a long period of time.
</p>
          <p class="card-text">Made for usage, commonly searched for. Fork, like and use it. Just move the carousel div above the col containing the text for left alignment of images</p>
          <br>
          <a href="#" class="mt-auto btn btn-primary  ">Read More</a>
        </div>
      </div>
      <!-- Carousel start -->
      <div class="col-md-5">
        <div id="CarouselTest" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#CarouselTest" data-slide-to="0" class="active"></li>
            <li data-target="#CarouselTest" data-slide-to="1"></li>
            <li data-target="#CarouselTest" data-slide-to="2"></li>

          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block" src="resources/images/details-1.png" height="450px" width="300px" alt="">
            </div>
            <div class="carousel-item">
              <img class="d-block" src="resources/images/details-2.png" height="450px" width="300px" alt="">
            </div>
            <div class="carousel-item">
              <img class="d-block" src="resources/images/details-3.png" height="450px" width="300px" alt="">
            </div>
            <a class="carousel-control-prev" href="#CarouselTest" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
            <a class="carousel-control-next" href="#CarouselTest" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
          </div>
        </div>
      </div>
      <!-- End of carousel -->
    </div>
  </div>
  <!-- End of card -->

</div>

<div class="container">
  <div class="card float-left mt-5">
    <div class="row ">

      <div class="col-sm-7">
        <div class="card-block"style="
    padding: 4em;
">
          <!--           <h4 class="card-title">Small card</h4> -->
          <p>A bug tracking system brings together the product development, quality assurance, and testing teams into a single forum that allows them to deliver a product that contains as few bugs as possible thereby enabling a smooth product experience.</p>
          <p>Software testing is essential for isolating and mitigating errors. A good QA process can uncover hundreds or even thousands of defects, and testing teams need to manage all of them. Integrating bug tracking into the testing workflow improves efficiency by helping testers prioritize, monitor and report on the status of each error..</p>
          
          <a href="#" class="btn btn-primary btn-sm">Read More</a>
        </div>
      </div>

      <div class="col-sm-5">
        <img class="d-block w-100" style="height: 373px ; padding:1em"  src="resources/images/details-4.png" alt="">
      </div>
    </div>
  </div>

 
    <div class="card float-right mt-5" >
      <div class="row">
        <div class="col-sm-5">
          <img class="d-block w-100" style="height: 373px;  padding:1em;" src="resources/images/details-3.png" alt="">
        </div>
        <div class="col-sm-7">
          <div class="card-block" style="
    padding: 4em;
">
            <!--           <h4 class="card-title">Small card</h4> -->
            <p>A bug tracking software has tools for analyzing significant trends that the development teams can leverage to prevent recurring issues that disrupt the product development process. </p>
            <p> It also provides a platform for reporting, defect lifecycle management, and traceability of bug reports, among others.bug tracking software helps collate all the available information, it will be easier to improve productivity, minimize effort spent on minor issues, and minimize disruption in product development.

            </p>
            <br>
            <a href="#" class="btn btn-primary btn-sm float-right">Read More</a>
          </div>
        </div>
 
      </div>
    </div>
  </div>
 
 <br>
<br>
 
</body>
</html>