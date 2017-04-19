<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : semestralka_Jan_Havel_stylesheet.xsl
    Created on : 18. dubna 2017, 21:47
    Author     : Jan Havel
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/ukladani_hry">
        <html>
            <head>
                <title>semestralka_Jan_Havel_stylesheet.xsl</title>
            </head>
            <body>
                <h1>Ukladani hry</h1>
                <ul>
                    <li>
                        <xsl:for-each select="hra">
                            <xsl:sort select="meta_info_ulozeni/datum_ulozeni/datum" order="descending"/>
                            
                              <xsl:sort select="meta_info_ulozeni/datum_ulozeni/cas" order="descending"/>
                              
                              <h2>Hra</h2>
                              <ul>
                                  <li>
                                      <h3>Podrobne informace o ulozenem souboru hry</h3>
                                      <xsl:for-each select="meta_info_ulozeni">
                                          Jmeno ulozeni:<xsl:value-of select="jmeno_savu"/><br/>
                                        <ul>
                                          <li>
                                              <h4>Datum a cas ulozeni hry</h4>
                                              Datum a cas ulozeni:<xsl:value-of select="datum_ulozeni/datum"/>,<xsl:value-of select="datum_ulozeni/cas"/><br/>
                                          </li>
                                        </ul>
                                          Jmeno postavy:<xsl:value-of select="jmeno_postavy"/><br/>
                                          Uroven:<xsl:value-of select="statut"/>, Level:<xsl:value-of select="statut/@level"/><br/>
                                          Lokace:<xsl:value-of select="lokace"/><br/>
                                          Zdraví:<xsl:value-of select="zdravi"/><xsl:value-of select="zdravi/@unit"/>                                       
                                      </xsl:for-each>
                                  </li>
                                  <li>
                                      <h3>Nastaveni hry</h3>
                                      <xsl:for-each select="nastaveni">
                                      <ul>
                                          <li>
                                              <h4>Obraz</h4>
                                              <xsl:for-each select="obraz">
                                              Typ zobrazeni:<xsl:value-of select="typ_zobrazeni"/><br/>
                                              Kvalita:<xsl:value-of select="kvalita"/>, Uroven:<xsl:value-of select="kvalita/@uroven_kvality"/><br/>
                                              Rozliseni:<xsl:value-of select="rozliseni"/><br/>
                                              Pomer stran:<xsl:value-of select="rozliseni/@pomer_stran"/><br/>
                                              Gamma:<xsl:value-of select="gamma"/>, Hodnota:<xsl:value-of select="gamma/@hodnota"/><br/>
                                              Kontrast:<xsl:value-of select="kontrast"/>, Hodnota:<xsl:value-of select="kontrast/@hodnota"/><br/>
                                              Jas:<xsl:value-of select="jas"/>, Hodnota:<xsl:value-of select="jas/@hodnota"/><br/>
                                              Fullscreen:<xsl:value-of select="fullscreen/@checked"/>                                                    
                                              </xsl:for-each>
                                          </li>
                                          <li>
                                              <h4>Zvuk</h4>
                                              <xsl:for-each select="zvuk">
                                              Hlasitost efektu:<xsl:value-of select="hlasitost_efektu"/>, Efekt:<xsl:value-of select="hlasitost_efektu/@efekt"/><br/>
                                              Hlasitost hudby:<xsl:value-of select="hlasitost_hudby"/>, Hudba:<xsl:value-of select="hlasitost_hudby/@hudba"/><br/>
                                              EAX:<xsl:value-of select="eax/@checked"/>    
                                              </xsl:for-each>
                                          </li>
                                          <li>
                                              <h4>Obecne nastaveni</h4>
                                              <xsl:for-each select="obecna_hra">
                                              Obtiznost:<xsl:value-of select="obtiznost/@uroven"/>-<xsl:value-of select="obtiznost"/><br/>
                                              Zobrazit zamerovac:<xsl:value-of select="zobraz_zamerovac"/><br/>
                                              Zobrazit dynamicky zamerny kriz:<xsl:value-of select="dyn_zamer_kriz"/><br/>
                                              Zobrazit zbran:<xsl:value-of select="zobraz_zbran"/><br/>
                                              Zobrazit vzdalenost k cili:<xsl:value-of select="zobraz_vzdalenost_cile"/><br/>
                                              ID NPC:<xsl:value-of select="id_npc"/>    
                                              </xsl:for-each>
                                          </li>
                                          <li>
                                              <h4>Ovladani</h4>
                                              <xsl:for-each select="ovladani">
                                              Citlivost mysi:<xsl:value-of select="citlivost_mysi/@citlivost"/>-<xsl:value-of select="citlivost_mysi"/><br/>
                                              Invertovat mys:<xsl:value-of select="inverze_mysi"/><br/>
                                              Resetovat do vychoziho nastaveni:<xsl:value-of select="vychozi_nastaveni"/>    
                                              </xsl:for-each>
                                          </li>                                          
                                      </ul>
                                      </xsl:for-each>
                                  </li>
                                  <li>
                                      <h3>Herni plocha</h3>
                                      <xsl:for-each select="herni_plocha">
                                      <ul>
                                          <li>
                                              <h4>Postava</h4>
                                              <xsl:for-each select="postava">
                                              <ul>
                                                  <li>
                                                      <h5>Inventar</h5>
                                                      <xsl:for-each select="inventar">
                                                      Hmotnost/Max.hmotnost:<xsl:value-of select="vaha"/>/<xsl:value-of select="vaha/@max_hmotnost"/>, Stav:<xsl:value-of select="vaha/@stav_zatizeni"/><br/>
                                                      <ul>
                                                          <li>
                                                              <h6>Zbrane</h6>
                                                              <xsl:for-each select="zbrane">
                                                              Primarni:<xsl:value-of select="primarni"/>, Stav:<xsl:value-of select="primarni/@stav"/><br/>
                                                              Sekundarni:<xsl:value-of select="sekundarni"/>, Stav:<xsl:value-of select="sekundarni/@stav"/><br/>
                                                              </xsl:for-each>
                                                          </li>
                                                      </ul>
                                                      Oblek:<xsl:value-of select="oblek"/>, Typ:<xsl:value-of select="oblek/@typ_obleku"/>, Stav:<xsl:value-of select="oblek/@stav"/><br/>    
                                                      </xsl:for-each>
                                                  </li>
                                                  <li>
                                                      <h5>Aktualni zbran</h5>
                                                      Zbran v ruce:<xsl:value-of select="aktualni_zbran"/>
                                                  </li>
                                              </ul>
                                              </xsl:for-each>
                                          </li>
                                          <li>
                                              <h4>PDA</h4>
                                              <xsl:for-each select="pda">
                                              <ul>
                                                  <li>
                                                      <h5>Ukoly</h5>
                                                      <xsl:for-each select="ukoly">
                                                      Datum a cas zadani:<xsl:value-of select="ukoly/@zadano"/>, <xsl:value-of select="ukoly/@cas"/><br/>
                                                      Mise:<xsl:value-of select="nazev"/><br/>
                                                      Faze mise:<xsl:value-of select="@faze"/>.<xsl:value-of select="faze_ukolu"/><br/>
                                                      Popis:<xsl:value-of select="popis"/>    
                                                      </xsl:for-each>
                                                  </li>
                                                  <li>
                                                      <h5>Kontakty</h5>
                                                        <table border="2px solid black">
                                                            <tr>                                                                                                              
                                                                <th>Jmeno</th>
                                                                <th>Frakce</th>
                                                                <th>Reputace</th>
                                                                <th>Pristup</th>
                                                                <th>Uroven</th><br/>
                                                            </tr>
                                                        </table>
                                                        <xsl:for-each select="kontakty/osoba">
                                                            <xsl:sort select="@uroven" order="ascending"/>
                                                            
                                                            <table border="1px solid black">
                                                              <tr>
                                                                <td><xsl:value-of select="jmeno"/></td>
                                                                <td><xsl:value-of select="@frakce"/></td>
                                                                <td><xsl:value-of select="@reputace"/></td>
                                                                <td><xsl:value-of select="@pristup"/></td>
                                                                <td><xsl:value-of select="@uroven"/></td>
                                                              </tr> 
                                                            </table>
                                                                                                                  
                                                      </xsl:for-each>
                                                  </li>
                                                  <li>
                                                      <h5>Hodnoceni</h5> 
                                                      <table border="2px solid black">
                                                          <tr>                                                     
                                                                <th>Umisteni</th>
                                                                <th>Jmeno</th>
                                                                <th>Frakce</th>        
                                                                <th>Pristup</th>
                                                                <th>Hodnoceni</th>
                                                                <th>Stav</th><br/>
                                                          </tr>
                                                      </table>
                                                        <xsl:for-each select="hodnoceni/osoba">
                                                            <xsl:sort select="@umisteni"/>
                                                            
                                                            <table border="1px solid black">
                                                              <tr>
                                                                <td><xsl:value-of select="@umisteni"/></td>
                                                                <td><xsl:value-of select="jmeno"/></td>
                                                                <td><xsl:value-of select="@frakce"/></td>
                                                                <td><xsl:value-of select="@pristup"/></td>
                                                                <td><xsl:value-of select="@hodnoceni"/></td>
                                                                <td><xsl:value-of select="@stav"/></td>
                                                              </tr>
                                                            </table>
                                                             
                                                      </xsl:for-each>
                                                  </li>
                                                  <li>
                                                      <h5>Statistika</h5>
                                                      <xsl:for-each select="statistika">
                                                      Pocet zabitych stalkeru:<xsl:value-of select="stalkeri"/><br/>
                                                      Pocet zabitych mutantu:<xsl:value-of select="mutanti"/><br/>
                                                      Pocet splnenych ukolu:<xsl:value-of select="ukoly"/><br/>
                                                      Pocet artefaktu:<xsl:value-of select="artefakty"/><br/>
                                                      Celkove skore:<xsl:value-of select="celkem"/>    
                                                      </xsl:for-each>
                                                  </li>
                                              </ul>
                                              </xsl:for-each>
                                          </li>
                                      </ul>
                                      </xsl:for-each>
                                  </li>
                              </ul>
                              
                            
                            <xsl:if test="position() != last()">------------------------------------------------</xsl:if>
                        </xsl:for-each>
                    </li>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
