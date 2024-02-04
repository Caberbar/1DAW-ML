<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="biblioteca">
        <html>
            <head>
                <tittle>MI BIBLIOTECA</tittle>
                <style>
                    h2{color:#C11244}
                </style>
            </head>
            <body>
                <table border="1">
                    <tr >
                        <th style="text-align:left">Titulo</th>
                        <th style="text-align:left">Fecha publicación</th>
                        <th style="text-align:left">Año</th>
                    </tr>
                    <xsl:for-each select="libro">
                        <xsl:if test="fechaPublicacion/@año = '1973'">
                            <tr>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="fechaPublicacion/@año"/>
                                </td>
                                <td>
                                    <xsl:value-of select="autor"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>