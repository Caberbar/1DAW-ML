<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="universidad">
        <html>
            <head>
                <meta charset="utf-8"/>
                <style type="text/css">
                    @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&amp;display=swap');

                    table{
                        border: 3px solid green;
                        width: 80%;
                        border-collapse: collapse;
                    }


                    th,{border: 1px solid #ccc; width: 30%;text-align: right; padding: 10px}
                    td{border: 1px solid #ccc;}

                    div{
                        width: 100%;
                        text-align: center;
                        font-family: 'Roboto Slab', serif;
                        fotn-size: 24px;
                    }

                    .tablaPrincipal {
                        margin-left: auto;
                        margin-right: auto; }

                    .imagen{
                        width:50px; 
                        height:50px
                    }

                    .negrita {
                        font-weight: bold;
                    }

                    .centrar{
                        text-align: center;
                    }

                </style>
            </head>
            <body style="border: yellow 1px solid">
                <div>
                    <h1>
                        <xsl:value-of select="nombre"/>
                    </h1>
                    <xsl:for-each select="alumnos/alumno">
                    
                        <xsl:variable name="idCarrera" select="estudios/carrera/@codigo"/>
                        <xsl:variable name="idAsignatura" select="estudios/asignaturas/asignatura/@codigo"></xsl:variable>
                        
                        <table class="tablaPrincipal">
                            <tr>
                                <th>Alumno</th>
                                <td>
                                    <xsl:value-of select="nombre"/>, <xsl:value-of select="apellido1"/>&#160;<xsl:value-of select="apellido2"/>
                                </td>
                                <xsl:if test="@beca">
                                    <td class="centrar">
                                        <img src="https://cdn-icons-png.flaticon.com/512/6926/6926264.png" class="imagen"/>
                                    </td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <th>Titulación</th>
                                <td colspan="2">
                                    <xsl:value-of select="//carreras/carrera[@id = $idCarrera]/nombre"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Asignaturas que cursa</th>
                                <td colspan="2">
                                    <xsl:for-each select="//asignaturas/asignatura[@id = $idAsignatura]">
                                        <span class="negrita">
                                            <xsl:value-of select="nombre"/>
                                        </span>
                                        <ul>
                                            <li>Créditos teóricos: <xsl:value-of select="creditos_teoricos"/></li>
                                            <li>Créditos prácticos: <xsl:value-of select="creditos_practicos"/></li>
                                        </ul>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </table>
                        <hr color="black"/>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>