<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:param name="eventId">e1</xsl:param>
  
  <xsl:template match="/">
    <xsl:apply-templates select="/festival/events/event[@id=$eventId]"/>
  </xsl:template>

  <xsl:template match="/festival/events/event">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "id": "</xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "title": "</xsl:text>
    <xsl:value-of select="title"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "description": "</xsl:text>
    <xsl:value-of select="translate(description, '&#10;', ' ')"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "startTime": "</xsl:text>
    <xsl:value-of select="startTime"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "endTime": "</xsl:text>
    <xsl:value-of select="endTime"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "day": </xsl:text>
    <xsl:value-of select="day"/>
    <xsl:text>,&#10;</xsl:text>
    <xsl:text>  "venueId": "</xsl:text>
    <xsl:value-of select="venue/@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "stageId": "</xsl:text>
    <xsl:value-of select="stage/@id"/>
    <xsl:text>",&#10;</xsl:text>
    <xsl:text>  "performerId": "</xsl:text>
    <xsl:value-of select="performer"/>
    <xsl:text>"&#10;</xsl:text>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>

</xsl:stylesheet>
