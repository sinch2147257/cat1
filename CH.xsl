<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2021 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center"> Employee Management System</h1>

                <table border="2" align="center">
                    <tr bgcolor="lightblue">

                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Email id</th>
                        <th>Phone num</th>
                        <th>designation</th>
                    </tr>
                    <xsl:for-each select="company/Employee">
                        <xsl:sort select = "Emp_name"/>
                        <xsl:if test="Emp_salary &gt; 50000">
                            <tr >

                                <td>
                                    <xsl:value-of select="Emp_name"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_age"></xsl:value-of>
                                </td>

                                <td>
                                    <xsl:value-of select="Emp_salary"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_emailid"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Phonenum"></xsl:value-of>
                                </td>

                                <td>
                                    <xsl:value-of select="Emp_designation"></xsl:value-of>
                                </td>

                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <br>
                    <br>
                    </br>
                </br>


            </body>
        </html>

    </xsl:template>

   
</xsl:stylesheet>