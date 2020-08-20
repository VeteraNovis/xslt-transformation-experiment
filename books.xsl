<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/catalog">
    <html>
        <head>
            <link href="books.css" rel="stylesheet" type="text/css"></link>
        </head>
        <body>    
            <div class="navbar">
                <a href="#home">Home</a>
                <a href="#about">About</a>
                <a href="#news">News</a>
                <a href="#contact">Contact</a>
            </div>
              
            <div class="main">
                <div class ="title">
                    <h1>Book Catalog</h1>
                </div>
                <div class="intro">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras pretium dolor eget pulvinar aliquam. Phasellus at euismod ligula. Cras viverra semper laoreet. Nulla ac diam suscipit, aliquet metus nec, maximus dolor. Sed accumsan arcu ut nisi mattis porttitor. Fusce mattis vestibulum fermentum. Praesent sed eros rhoncus, varius magna eget, malesuada ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras auctor ipsum enim, ut egestas ligula ornare eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut volutpat placerat arcu non iaculis. Donec eget libero dignissim, interdum metus non, scelerisque ipsum. Etiam pretium rutrum sagittis. Proin rhoncus mi quis justo pharetra pretium.
                    </p>
                </div>

            <table class="mainTable">
                <tr>
                    <th><b>Title</b></th>
                    <th><b>Genre</b></th>
                    <th><b>Date Published</b></th>
                    <th><b>Rating</b></th>

                </tr>
                <xsl:for-each select="book">
                    <tr>
                        <td>
                            <table>
                                <tr><b><xsl:value-of select="title" /></b></tr>
                                <tr><i><xsl:value-of select="author" /></i></tr>
                                </table>
                        </td>
                        <td><xsl:value-of select="genre" /></td>
                        <td><xsl:value-of select="publish_date" /></td>
                        <td>
                            <xsl:choose>
                            <xsl:when test="rating = 0">
                                Poor
                            </xsl:when>
                            <xsl:when test="rating = 1">
                                Average
                            </xsl:when>
                            <xsl:when test="rating = 2">
                                Good
                            </xsl:when>
                            <xsl:when test="rating = 3">
                                Excellent
                            </xsl:when>
                            <xsl:otherwise>
                                N/A
                            </xsl:otherwise>
                        </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>

            <div class="intro">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras pretium dolor eget pulvinar aliquam. Phasellus at euismod ligula. Cras viverra semper laoreet. Nulla ac diam suscipit, aliquet metus nec, maximus dolor. Sed accumsan arcu ut nisi mattis porttitor. Fusce mattis vestibulum fermentum. Praesent sed eros rhoncus, varius magna eget, malesuada ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras auctor ipsum enim, ut egestas ligula ornare eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut volutpat placerat arcu non iaculis. Donec eget libero dignissim, interdum metus non, scelerisque ipsum. Etiam pretium rutrum sagittis. Proin rhoncus mi quis justo pharetra pretium.
                </p>
            </div>
            
            </div>
        </body>

    </html>
</xsl:template>
</xsl:stylesheet>