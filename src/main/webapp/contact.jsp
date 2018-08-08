<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jsIncludes">
  <script type="text/javascript" src="/js/contact.js"></script>
</c:set>
<t:staticPage currentPage="contact">
  <main class="container">
    <h1 class="color-orange">
      </br>
    </h1>
    
  <div class="container-fluid">
  <div class="row">
    <div class="col-xs-2 col-xs-offset-2 Email_us_sec"><a href="#contact"><img class="img-responsive" id="left_img_about" src="images/contact.png">
      <div class="row">
        <div class="col-xs-12">
        <h3 class="tile_name">Email Us</h3></a>
        <p id="email_details"></br></p>
        </p>
        </div>
      </div>
    </div>
    <div class="col-xs-2 col-xs-offset-1 Join_blog"><a href="http://teammatesonline.blogspot.sg/"><img class="img-responsive" id="left_img_about" src="images/blog.png">
      <div class="row">
        <div class="col-xs-12">
        <h3 class="tile_name">Our Blog</h3>
        <p id="email_details"></br></p></a>
        </div>
      </div>
    </div>
    <div class="col-xs-2  Join_us col-xs-offset-1"><a href="https://github.com/TEAMMATES/teammates"><img class="img-responsive" id="left_img_about" src="images/joinus.png">
      <div class="row">
        <div class="col-xs-12">
        <h3 class="tile_name">Join Us</h3>
        <p id="email_details"></br></p></a>
        </div>
      </div>
    </div>
  </div>
  </div>
  
    <div class="container_form">  
      <form id="contact" action="" method="post">
      <h3>Contact Us</h3>
      <h4>Our Email : teammates@comp.nus.edu.sg</h4>
      <fieldset>
        <input placeholder="Your name" type="text" id="nameID" tabindex="1" required autofocus>
      </fieldset>
      <fieldset>
        <input placeholder="Your Email Address" type="email" id="emailID" tabindex="2" required>
      </fieldset>
      <fieldset>
        <input placeholder="Your Phone Number (optional)" type="tel" tabindex="3" >
      </fieldset>
      <fieldset>
        <textarea placeholder="Type your message here...."  id="messageID" tabindex="5" required></textarea>
      </fieldset>
      <fieldset>
        <button name="submit" class="btn btn-success btn-block" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
      </fieldset>
      </form>
    </div>
   
    
    
  </main>
</t:staticPage>
