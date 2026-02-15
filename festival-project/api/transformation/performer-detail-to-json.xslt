<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="performerId">p1</xsl:param>
  
  <xsl:template match="/">
    <xsl:apply-templates select="/festival/performers/performer[@id=$performerId]"/>
  </xsl:template>

  <xsl:template match="/festival/performers/performer">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "id": "</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "name": "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "genre": "</xsl:text>
    <xsl:value-of select="genre"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "bio": "</xsl:text>
    <xsl:value-of select="translate(bio, '&#10;', ' ')"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "country": "</xsl:text>
    <xsl:value-of select="country"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "image": "</xsl:text>
    <xsl:value-of select="image"/>
    <xsl:text>"&#10;</xsl:text>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
