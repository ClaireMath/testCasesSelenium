*** Settings ***
Documentation       Template robot main suite.


*** Tasks ***
Minimal task
    Log    Done.

  menu burger =   //a[@id="menu-toggle"]   
  bouton login du menu latéral = //a[@href="profile.php#login"]      //*[@id="sidebar-wrapper"]/ul/li[3]/a
   
Lien Twitter = //i[@class='fa fa-twitter fa-fw fa-3x']
Lien mail Katalon = //a[.='info@katalon.com']/..     
Titre de la page qui contient « CURA Healthcare Service »
//h1[contains(text(),‘CURA Healthcare Service’)]
//h1[contains(text(),‘CURA Healthcare Service’)]      ou      //h1[.=‘CURA Healthcare Service’]/..
