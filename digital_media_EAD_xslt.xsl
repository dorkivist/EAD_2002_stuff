<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" 
    xmlns:ead="urn:isbn:1-931666-22-9"
    xmlns:saxon="http://saxon.sf.net/" 
    xmlns:functx="http://www.functx.com" 
    xmlns:local="local.uri"
    version="2.0"
    exclude-result-prefixes="xsl xd ead saxon functx local">
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="row">
         <c level="file">
            <did>
                <xsl:if test="container">
                    <container type="box">
                        <xsl:text>Box </xsl:text><xsl:value-of select="container"/>
                    </container>
                </xsl:if>
                <xsl:if test="unittitle">
                    <unittitle>
                        <xsl:value-of select="unittitle"/><xsl:text>, </xsl:text>
                    </unittitle>
                </xsl:if>
                <xsl:if test="unitdate">
                    <unitdate>
                    <xsl:value-of select="unitdate"/>
                    </unitdate>
                </xsl:if>
           </did>
             <scopecontent><p>
                 <xsl:choose>
                     <xsl:when test="materialspec=''">
                         <xsl:value-of select="materialspec"/>
                     </xsl:when>
                     <xsl:when test="materialspec">
                             <xsl:text>Part number </xsl:text><xsl:value-of select="materialspec"/><xsl:text>. </xsl:text>
                     </xsl:when>
                 </xsl:choose>                
             <xsl:if test="abstract">
                     <xsl:text>Content summary: </xsl:text><xsl:value-of select="abstract"/>
             </xsl:if>
             </p></scopecontent>
        </c>
    </xsl:template>
</xsl:stylesheet>