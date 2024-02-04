<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="almacen">
        <html>
            <head>
                <style type="text/css">
                    @import url('https://fonts.googleapis.com/css2?family=Ubuntu&amp;display=swap');
                    <!-- font-family: 'Ubuntu', sans-serif; -->

                    table{
                        border: 3px solid black;
                        width: 100%;
                        margin-left: auto;
                        margin-right: auto; 
                        margin-bottom: 2em;
                        border-collapse: collapse;
                        padding: 10px;
                    }

                    h1{text-align: center}
                    th,td{border: 1px solid #ccc}
                    th{width: 150px}
                    img{width:50px; height: 50px}
                </style>
            </head>
            <body>
                <div>
                    <h1>FACTURA</h1>
                    <xsl:for-each select="factura">
                    <xsl:variable name="idCliente" select="@idclifact"/>
                        <table>
                            <tr>
                                <th>Número de factura</th>
                                <td><xsl:value-of select="@idfact"/></td>
                                <th>Fecha</th>
                                <td>
                                    <xsl:value-of select="fechafact/@dia"/> - 
                                    <xsl:value-of select="fechafact/@mes"/> - 
                                    <xsl:value-of select="fechafact/@año"/>
                                </td>
                            </tr>
                            <tr>
                                <th>IDCliente</th>
                                <td><xsl:value-of select="@idclifact"/></td>
                                <th>Nombre</th>
                                <td><xsl:value-of select="//cliente[@idcli = $idCliente]/nombrecli"/></td>
                            </tr>
                        </table>
                        <hr/>
                        PRODUCTOS
                        <table>
                            <tr>
                                <th>Cantidad</th>
                                <th>Descripción</th>
                                <th>P.V.P</th>
                                <th>Total</th>
                            </tr>
                            <xsl:for-each select="lineafact">
                            <xsl:variable name="idProducto" select="@idprodfact"/>
                                <tr>
                                    <td><xsl:value-of select="@cantidadfact"/></td>
                                    <td><xsl:value-of select="../../producto[@idprod = $idProducto]/nombreprod"/></td>
                                    <td><xsl:value-of select="@pu"/></td>
                                    <td><xsl:value-of select="@total"/></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td colspan="4">&#160;</td>
                            </tr>
                            <tr>
                                <th colspan="2">Subtotal</th>
                                <th>I.V.A</th>
                                <th>Importe total</th>
                            </tr>
                            <tr>
                                <td colspan="2"><xsl:value-of select="subtotalfact"/></td>
                                <td><xsl:value-of select="ivafact"/></td>
                                <td><xsl:value-of select="importefact"/></td>
                            </tr>
                        </table>
                        <hr/>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>