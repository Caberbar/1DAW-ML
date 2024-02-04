<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="crypto_data">
        <html>
            <head>
                <style type="text/css">
                    body{background-color: #FDF2E9}

                    table{
                        border: 3px solid teal;
                        width: 100%;
                        margin-left: auto;
                        margin-right: auto; 
                        margin-bottom: 2em;
                        border-collapse: collapse;
                        padding: 10px;
                    }

                    h1{text-align: center}
                    th{background-color: #f2f2f2}
                    th,td{border: 1px solid #ccc}
                    td{text-align: center}
                    img{width:50px; height: 50px}
                </style>
            </head>
            <body>
                <div>
                    <h1>Cripto Monedas</h1>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Simbolo</th>
                            <th>Precio</th>
                            <th>Precio de mercado</th>
                            <th>Cantidad en circulación</th>
                            <th>Logo</th>
                        </tr>
                        <xsl:for-each select="cryptocurrency">
                        <xsl:sort select="name"/>
                            <tr>
                                <xsl:choose>
                                    <xsl:when test="price > 10000" >
                                        <td style="background-color: #85C1E9; font-weight: bold;">
                                            <xsl:value-of select="name"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td style="background-color: #82E0AA">
                                            <xsl:value-of select="name"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <td>
                                    <xsl:value-of select="symbol"/>
                                </td>
                                <td>
                                    <xsl:value-of select="price"/> -
                                    <xsl:value-of select="price/@currency"/>
                                </td>
                                <td>
                                    <xsl:value-of select="market_cap"/> -
                                    <xsl:value-of select="market_cap/@currency"/>
                                </td>
                                <td>
                                    <xsl:value-of select="circulating_supply"/>
                                </td>
                                <td>
                                    <img src="{logo_url}"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>