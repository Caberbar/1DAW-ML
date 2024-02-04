<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="arboles">
        <html>
            <head>
                <meta charset="utf-8"/>
                <style type="text/css">
                    @import url('https://fonts.googleapis.com/css2?family=Updock&amp;display=swap');

                    .fuente{font-family: 'Updock', cursive;color: green;}
                    .arial {font-family: Arial, Helvetica, sans-serif;}

                    table{
                        border: 3px solid green;
                        width: 80%;
                        margin-left: auto;
                        margin-right: auto; 
                        margin-bottom: 2em;
                        border-collapse: collapse;
                        font-size: 1,2em;
                    }

                    th,{border: 1px solid #ccc}
                    td{border: 1px solid #ccc}

                    div{
                        width: 80%;
                        border: black 1px solid;
                        margin: 0 auto;
                    }

                </style>
            </head>
            <body style="border: yellow 1px solid">
                <div>
                    <img src="https://cutt.ly/UGtBGdj"/>
                    <h1 class="fuente">Mi colección de árboles</h1>
                    <xsl:for-each select="arbol">
                        <table>
                            <tr>
                                <th>Nombre científico</th>
                                <td>
                                    <xsl:value-of select="@nombreCientifico"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Nombre común</th>
                                <td>
                                    <ul>
                                        <xsl:for-each select="nombreComun">
                                            <li>
                                                <xsl:value-of select="."/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>Vegetación</th>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@vegetacion='caducifolio'" >
                                            <img src="https://cutt.ly/CGtG3pQ" width="50%"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <img src="https://cutt.ly/UGtJbFB" width="50%"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                            <tr>
                                <th>Altura</th>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="altura/min" >
                                            Mín:
                                            <xsl:value-of select="altura/min"/>
                                            <xsl:value-of select="altura/unidad"/> - Max:
                                            <xsl:value-of select="altura/max"/>
                                            <xsl:value-of select="altura/unidad"/>
                                        </xsl:when>
                                        <xsl:when test="altura/media" >
                                            Media: <xsl:value-of select="altura/media"/><xsl:value-of select="altura/unidad"/>
                                        </xsl:when>
                                        <xsl:otherwise></xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                            <tr>
                                <th>Forma y  estructura</th>
                                <td>
                                    <ul>
                                        <li>copa:
                                            <xsl:value-of select="formaYEstructura/copa"/>
                                        </li>
                                        <li>tronco:
                                            <xsl:value-of select="formaYEstructura/tronco"/>
                                        </li>
                                        <li>ramaje:
                                            <xsl:value-of select="formaYEstructura/ramaje"/>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>Color</th>
                                <td>
                                    <xsl:if test="color/primavera">
                                        <b style="color: green;">Primavera: </b>
                                        <ul>
                                            <li>Haz:
                                                <xsl:if test="color/primavera/haz/hojasUnicas">
                                                    -
                                                    <xsl:value-of select="color/primavera/haz/hojasUnicas"/>
                                                </xsl:if>
                                                <xsl:if test="color/primavera/haz/hojasJovenes">
                                                    -
                                                    <xsl:value-of select="color/primavera/haz/hojasJovenes"/>
                                                </xsl:if>
                                                <xsl:if test="color/primavera/haz/hojasViejas">
                                                    -
                                                    <xsl:value-of select="color/primavera/haz/hojasViejas"/>
                                                </xsl:if>
                                            </li>
                                            <li>Envés:
                                                <xsl:if test="color/primavera/enves/hojasUnicas">
                                                    -
                                                    <xsl:value-of select="color/primavera/enves/hojasUnicas"/>
                                                </xsl:if>
                                                <xsl:if test="color/primavera/enves/hojasJovenes">
                                                    -
                                                    <xsl:value-of select="color/primavera/enves/hojasJovenes"/>
                                                </xsl:if>
                                                <xsl:if test="color/primavera/enves/hojasViejas">
                                                    -
                                                    <xsl:value-of select="color/primavera/enves/hojasViejas"/>
                                                </xsl:if>
                                            </li>
                                        </ul>
                                    </xsl:if>
                                    <xsl:if test="color/otonio">
                                        <b style="color: yellow;">Otoño:</b>
                                        <ul>
                                            <li>Haz:
                                                <xsl:if test="color/otonio/haz/hojasUnicas">
                                                    -
                                                    <xsl:value-of select="color/otonio/haz/hojasUnicas"/>
                                                </xsl:if>
                                                <xsl:if test="color/otonio/haz/hojasJovenes">
                                                    -
                                                    <xsl:value-of select="color/otonio/haz/hojasJovenes"/>
                                                </xsl:if>
                                                <xsl:if test="color/otonio/haz/hojasViejas">
                                                    -
                                                    <xsl:value-of select="color/otonio/haz/hojasViejas"/>
                                                </xsl:if>
                                            </li>
                                            <li>Envés:
                                                <xsl:if test="color/otonio/enves/hojasUnicas">
                                                    -
                                                    <xsl:value-of select="color/otonio/enves/hojasUnicas"/>
                                                </xsl:if>
                                                <xsl:if test="color/otonio/enves/hojasJovenes">
                                                    -
                                                    <xsl:value-of select="color/otonio/enves/hojasJovenes"/>
                                                </xsl:if>
                                                <xsl:if test="color/otonio/enves/hojasViejas">
                                                    -
                                                    <xsl:value-of select="color/otonio/enves/hojasViejas"/>
                                                </xsl:if>
                                            </li>
                                        </ul>
                                    </xsl:if>
                                </td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>