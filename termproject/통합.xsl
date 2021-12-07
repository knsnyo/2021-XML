<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
    <title>XML 문화유산</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <style>
        .prev, .next{
          cursor: pointer;
          position: absolute;
          top: 50%;
          width: auto;
          padding: 16px;
          margin-top: -22px;
          color: white;
          font-weight: bold;
          font-size: 18px;
          transition: 0.6s ease;
          border-radius: 0 3px 3px 0;
          user-select: none;
        }
        .next{
          right: 0;
          border-radius: 3px 0 0 3px;
        }
        *{
    margin:0;
    padding:0;
    }
    .fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
    </style>
     </head>
  <body>
      <div class="w3-pale-green">
        <p align="center" style="font-size:80px"><strong>문화유산</strong></p>
      </div>
      <div class="w3-sand">
        <div class="w3-content w3-center fade">
        <xsl:for-each select="문화유산들/문화유산">
                <a>
          <xsl:attribute name="href"><xsl:value-of select="주소"/></xsl:attribute>
          <xsl:attribute name="target">_blank</xsl:attribute>
          <img>
            <xsl:attribute name="align">center</xsl:attribute>
            <xsl:attribute name="src"> <xsl:value-of select="사진/@file"></xsl:value-of></xsl:attribute>
            <xsl:attribute name="class">mySlides fade</xsl:attribute>
            <xsl:attribute name="width"> 50%</xsl:attribute>
            <xsl:attribute name="height"> 300px</xsl:attribute>
          </img>
          </a>
          <div><xsl:attribute name="class">mySlidesContent</xsl:attribute>
            <h6> 이름: <xsl:value-of select="이름"/></h6>
            <h6> 지정일: <xsl:value-of select="지정일"/></h6>
            <h6> 시대: <xsl:value-of select="시대"/></h6>
            <h6> 장소: <xsl:value-of select="장소"/></h6>
            <h6> 종류: <xsl:value-of select="종류"/></h6>
            <p> 설명: <xsl:value-of select="내용"/></p>
          </div>   
        </xsl:for-each>
      </div>
      <div class="w3-center">
        <div class="w3-section ">
          <button class="w3-button w3-light-grey prev" onclick="minDivs(1)">❮&#10094;</button>
          <button class="w3-button w3-light-grey next" onclick="plusDivs(1)">&#10095;❯</button>
        </div>
      </div>
      </div>
      <script type="text/javascript">
        <![CDATA[
var slideIndex = 1;
showDivs(slideIndex);
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function minDivs(n){
  showDivs(slideIndex -= n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var y = document.getElementsByClassName("mySlidesContent");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
    y[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-red", "");
  }
  x[slideIndex-1].style.display = "block";  
  y[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-red";
}]]>
      </script>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
