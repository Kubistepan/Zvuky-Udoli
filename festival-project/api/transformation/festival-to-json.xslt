<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "id": "zvuky-udoli-2026",&#10;</xsl:text>
    <xsl:apply-templates select="/festival/metadata"/>
    <xsl:text>  "totalPerformers": </xsl:text>
    <xsl:value-of select="count(/festival/performers/performer)"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "totalEvents": </xsl:text>
    <xsl:value-of select="count(/festival/events/event)"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "totalVenues": </xsl:text>
    <xsl:value-of select="count(/festival/venues/venue)"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "ticketing": {&#10;</xsl:text>
    <xsl:text>    "singleDayPrice": 500,&#10;</xsl:text>
    <xsl:text>    "twoDayPrice": 900,&#10;</xsl:text>
    <xsl:text>    "fullFestivalPrice": 1300,&#10;</xsl:text>
    <xsl:text>    "currency": "CZK"&#10;</xsl:text>
    <xsl:text>  }&#10;</xsl:text>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="/festival/metadata">
    <xsl:text>  "name": "</xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "year": </xsl:text>
    <xsl:value-of select="year"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "edition": </xsl:text>
    <xsl:value-of select="edition"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "location": "</xsl:text>
    <xsl:value-of select="location"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "startDate": "</xsl:text>
    <xsl:value-of select="startDate"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "endDate": "</xsl:text>
    <xsl:value-of select="endDate"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "description": "</xsl:text>
    <xsl:value-of select="translate(description, '&#10;', ' ')"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "website": "</xsl:text>
    <xsl:value-of select="website"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "email": "</xsl:text>
    <xsl:value-of select="email"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "phoneNumber": "</xsl:text>
    <xsl:value-of select="phoneNumber"/>
    <xsl:text>",&#10;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
