# =============================================================================
# GLYPH SCRIPT FOR PLOTTING IN POINTWISE
# =============================================================================
# Written by Travis Carrigan
# 
# v1: Oct 19, 2011
#

# Load Glyph
package require PWI_Glyph 2.4

# Setup Pointwise and define working directory
pw::Application reset
pw::Application clearModified
set scriptDir [file dirname [info script]]


# -------------------------------------
# User Defined Parameters
# -------------------------------------
# Plot 1 Information (add more plots if necessary)
set xData(1)  {0 1 2 3 4 5}; # X axis data
set xRange(1) {0 5};         # X range  

set yData(1)  {0 1 2 3 4 5}; # Y axis data
set yRange(1) {0 5};         # Y range

set lineColor(1) {0.0 0.0 0.0}; # Line color
set pntRender(1) "OFF";         # Display points

# Global controls
set bgColor  {1.0 1.0 1.0}; # Change background color
set pltScale {1 1};         # Plot scale
set legend   "OFF";         # Display legend
set grid     "OFF";         # Background grid


###############################################################
#-- PROC: 2PtDb
#--
#-- Create a simple database line.
#--
###############################################################
proc 2PtDb {pt1 pt2} {

    set seg [pw::SegmentSpline create]
        $seg addPoint $pt1
        $seg addPoint $pt2

    set db [pw::Curve create]
        $db addSegment $seg

    return $db

}



###############################################################
#-- PROC: 2PtCon
#--
#-- Create a simple connector from two points.
#--
###############################################################
proc 2PtCon {pt1 pt2} {

    set seg [pw::SegmentSpline create]
        $seg addPoint $pt1
        $seg addPoint $pt2

    set con [pw::Connector create]
        $con addSegment $seg

    return $con

}



###############################################################
#-- PROC: Pole
#--
#-- Create a pole connector.
#--
###############################################################
proc Pole {pt} {

    set seg [pw::SegmentSpline create]
        $seg addPoint $pt
        $seg addPoint $pt

    set con [pw::Connector create]
        $con addSegment $seg

    return $con

}



###############################################################
#-- PROC: Label
#--
#-- Create a database note.
#--
###############################################################
proc Label {text size pos} {

    set note [pw::Note create]
        $note setText "text"
        $note setSize $size
        $note setPosition $pos

    return $note

}



###############################################################
#-- PROC: BgColor
#--
#-- Change the background color.
#--
###############################################################
proc BgColor {color} {

    pw::Display setTopBackgroundColor $color
    pw::Display setBottomBackgroundColor $color

}



###############################################################
#-- PROC: LineColor
#--
#-- Change the line colors.
#--
###############################################################
proc LineColor {color} {



}



###############################################################
#-- PROC: Plot
#--
#-- Generates a two dimensional line plot in X-Y plane.
#--
###############################################################	
proc Plot {x y} {



}



# 
# END SCRIPT
#
