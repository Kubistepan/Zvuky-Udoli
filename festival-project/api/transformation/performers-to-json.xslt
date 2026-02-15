<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "data": [&#10;</xsl:text>
    <xsl:apply-templates select="/festival/performers/performer"/>
    <xsl:text>  ],&#10;</xsl:text>
    <xsl:text>  "count": </xsl:text>
    <xsl:value-of select="count(/festival/performers/performer)"/>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="/festival/performers/performer">
    <xsl:text>    {&#10;</xsl:text>
    <xsl:text>      "id": "</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "name": "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "genre": "</xsl:text>
    <xsl:value-of select="genre"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "country": "</xsl:text>
    <xsl:value-of select="country"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "image": "</xsl:text>
    <xsl:value-of select="image"/>
    <xsl:text>"&#10;</xsl:text>
    <xsl:text>    }</xsl:text>
    <xsl:if test="position() != last()">
      <xsl:text>,&#10;</xsl:text>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
