<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="venueId">v1</xsl:param>
  
  <xsl:template match="/">
    <xsl:apply-templates select="/festival/venues/venue[@id=$venueId]"/>
  </xsl:template>

  <xsl:template match="/festival/venues/venue">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "id": "</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "name": "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "description": "</xsl:text>
    <xsl:value-of select="translate(description, '&#10;', ' ')"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "address": "</xsl:text>
    <xsl:value-of select="translate(address, '&#10;', ' ')"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "capacity": </xsl:text>
    <xsl:value-of select="capacity"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "stages": [&#10;</xsl:text>
    <xsl:apply-templates select="stages/stage"/>
    <xsl:text>  ]&#10;</xsl:text>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="stages/stage">
    <xsl:text>    {&#10;</xsl:text>
    <xsl:text>      "id": "</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "name": "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>      "capacity": </xsl:text>
    <xsl:value-of select="capacity"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>      "type": "</xsl:text>
    <xsl:value-of select="type"/>
    <xsl:text>"&#10;</xsl:text>
    <xsl:text>    }</xsl:text>
    <xsl:if test="position() != last()">
      <xsl:text>,&#10;</xsl:text>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
