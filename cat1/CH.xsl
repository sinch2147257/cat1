<?xml version="1.0" encoding="UTF-8"?>
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
                    <xsl:for-each select="Emp/company/Employee">
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

 <!--   <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="name"/>
            <xsl:apply-templates select="ratings"/>
            <xsl:apply-templates select="price"/>
            <xsl:apply-templates select="offer"/>
            <xsl:apply-templates select="available"/>
            <xsl:apply-templates select="description"/>
        </p>
    </xsl:template>
    
    

    <xsl:template match="name" >
        Name: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    

    <xsl:template match="ratings">
        Ratings: <span style="color:#45C794">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="price">
        Price: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="offer">
        Offer: <span style="color:#45C794">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="available">
        Available: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="description">
        Description: <span style="color:#45C794">
            <xsl:value-of select="."/>
        </span>
        <br></br>
        <br />
    </xsl:template>  -->

</xsl:stylesheet>