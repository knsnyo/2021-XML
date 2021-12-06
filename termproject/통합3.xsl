<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
    <title>XML 문화유산</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
     </head>
  <body>
      <h1 align="center"><strong>문화유산</strong></h1>
      <hr/>
      <div class="w3-content w3-center">
        <xsl:for-each select="문화유산들/문화유산">
          <img>
            <xsl:attribute name="align">center</xsl:attribute>
            <xsl:attribute name="src"> <xsl:value-of select="사진/@file"></xsl:value-of></xsl:attribute>
            <xsl:attribute name="class">mySlides</xsl:attribute>
            <xsl:attribute name="width"> 50%</xsl:attribute>
            <xsl:attribute name="height"> 300px</xsl:attribute>
          </img>
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
        <div class="w3-section">
          <button class="w3-button w3-light-grey" onclick="minDivs(1)">❮ Prev</button>
          <button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next ❯</button>
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

function currentDiv(n) {
  showDivs(slideIndex = n);
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
