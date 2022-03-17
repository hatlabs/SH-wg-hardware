#!/usr/bin/env python3

from kikit import panelize, substrate
import kikit.common
from kikit.units import mm, deg
from kikit.defs import Layer
from kikit import panelize_ui_impl as ki
import shapely
import shapely.geometry
import pcbnew
import sys
import itertools


def main():
    pcb_filename = "SH-wg.kicad_pcb"
    panel_filename = "SH-wg-panel-main.kicad_pcb"

    n_panel_rows = 4
    n_panel_columns = 3

    frame_width = 5 * mm
    rail_width = frame_width
    hor_backbone_width = 4 * mm
    ver_backbone_width = 4 * mm

    tab_width = 2 * mm
    backbone_cut_width = tab_width
    hor_board_spacing = ver_backbone_width + 2 * tab_width
    ver_board_spacing = hor_backbone_width + 2 * tab_width

    frame_hor_space = tab_width
    frame_ver_space = tab_width

    frame_hor_offset = tab_width
    frame_ver_offset = tab_width

    tooling_hor_offset = frame_width / 2
    tooling_ver_offset = frame_width / 2
    tooling_hole_diam = 1.152 * mm

    fiducial_hor_offset = 2 * tooling_hor_offset
    fiducial_ver_offset = tooling_ver_offset
    fiducial_coppersize = 2 * mm
    fiducial_opening = 1 * mm

    text_anchor = "mt"
    text_hor_offset = 15.0 * mm
    text_ver_offset = frame_width / 2
    text_width = 1.5 * mm
    text_height = 1.5 * mm
    text_thickness = int(0.3 * mm)
    text_orientation = 0 * deg
    text_hor_justify = "center"
    text_ver_justify = "center"

    panel = panelize.Panel(panel_filename)

    first_panel_origin = pcbnew.wxPointMM(20, 20)

    # add the boards

    pcb1_source_area = pcbnew.wxRect(
        pcbnew.wxPointMM(33, 25), pcbnew.wxPointMM(105, 91)
    )

    # add the first pcb

    bounding_box_1 = panel.appendBoard(
        pcb_filename,
        destination=first_panel_origin,
        sourceArea=pcb1_source_area,
        shrink=True,
        origin=panelize.Origin.TopLeft,
        rotationAngle=0,
        tolerance=20 * mm,
    )

    pcb_1_x = bounding_box_1.GetX()
    pcb_1_y = bounding_box_1.GetY()
    pcb_1_width = bounding_box_1.GetWidth()
    pcb_1_height = bounding_box_1.GetHeight()

    # add the remaining boards

    for i in range(n_panel_rows):
        for j in range(n_panel_columns):
            if i == 0 and j == 0:
                continue

            ## add even columns upside down
            #if j % 2 == 0:
            #    rot = 180 * deg
            #    x_offset = pcb_1_width
            #    y_offset = pcb_1_height
            #else:
            rot = 0
            x_offset = 0
            y_offset = 0

            pcb_origin = pcbnew.wxPoint(
                pcb_1_x + (j * (pcb_1_width + hor_board_spacing)) + x_offset,
                pcb_1_y + (i * (pcb_1_height + ver_board_spacing)) + y_offset,
            )

            bounding_box_2 = panel.appendBoard(
                pcb_filename,
                destination=pcb_origin,
                sourceArea=pcb1_source_area,
                shrink=True,
                origin=panelize.Origin.TopLeft,
                rotationAngle=rot,
                tolerance=20 * mm,
            )

    panel_origin = pcbnew.wxPoint(
        bounding_box_1.GetX(),
        bounding_box_1.GetY() + bounding_box_1.GetHeight() + ver_board_spacing,
    )

    # create a dummy framing substrate (required for partition lines)

    framing_substrates = ki.dummyFramingSubstrate(
        panel.substrates, (frame_hor_offset, frame_ver_offset)
    )

    panel.buildPartitionLineFromBB(framing_substrates)

    # add the tabs

    tab_cuts = panel.buildTabsFromAnnotations()

    # add a backbone

    # bug workaround: convert backbone line coordinates to integers
    for i, l in enumerate(panel.backboneLines):
        coords = l.coords
        int_coords = [(int(x), int(y)) for (x, y) in coords]
        panel.backboneLines[i] = shapely.geometry.LineString(int_coords)

    backbone_cuts = []
    backbone_cuts = panel.renderBackbone(
        ver_backbone_width, hor_backbone_width, backbone_cut_width, backbone_cut_width
    )

    # add frame

    cuts = panel.makeFrame(frame_width, frame_hor_space, frame_ver_space)
    frame_cuts = itertools.chain(*cuts)

    # OR add rails

    # panel.makeRailsLr(rail_width)
    # frame_cuts = []

    # round the machined cuts

    panel.addMillFillets(1.0 * mm)

    # create the tab cuts

    panel.makeMouseBites(
        tab_cuts,
        diameter=0.5 * mm,
        spacing=0.75 * mm,
        offset=0 * mm,
        prolongation=0.5 * mm,
    )

    # create the backbone and frame cuts
    
    panel.makeMouseBites(
        itertools.chain(backbone_cuts, frame_cuts),
        diameter=0.5 * mm,
        spacing=0.75 * mm,
        offset=0,
        prolongation=0.5 * mm,
    )

    # add JLCPCB tooling holes

    panel.addCornerTooling(
        4, tooling_hor_offset, tooling_ver_offset, tooling_hole_diam, paste=True
    )

    # add fiducials

    panel.addCornerFiducials(
        3,
        fiducial_hor_offset,
        fiducial_ver_offset,
        fiducial_coppersize,
        fiducial_opening,
    )

    # add JLCPCB order number

    text_origin = kikit.common.resolveAnchor(text_anchor)(
        panel.boardSubstrate.boundingBox()
    ) + pcbnew.wxPoint(text_hor_offset, text_ver_offset)

    text_layer = Layer.F_SilkS

    panel.addText(
        text="JLCJLCJLCJLC",
        position=text_origin,
        orientation=text_orientation,
    )

    panel.save()


if __name__ == "__main__":
    main()
