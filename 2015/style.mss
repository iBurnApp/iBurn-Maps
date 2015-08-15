//Color and Font Palette
@background: #E8E0D8;
@plaza_color: #FFA851;
@plaza_line: #DF8337;
@sans: "Tahoma Regular";
@toilets:#00AFD4;
@streets_fill_light: #EBDED1;
@streets_fill: #D9CCBE;
@streets_fill2: #C3B8AB;
@streets_halo: #B2993D;
@streets_halo_text: #F2DBA0; 
@streets_text_color: #3F3F3F;
@streets_text_color2: #FFFFFF;
@fence: #AC1A20;
@fence2: #AC1A20;

Map {
  background-color: @background;
  buffer-size: 256;
}

#fence [name="Fence"] { 
  line-width:1;
  line-color:@streets_fill;
}

#plazas {
  line-color: @plaza_line;
  line-width:3;
  polygon-opacity:1;
  polygon-fill:@plaza_color;
  
}

 #outline {
  polygon-fill:@streets_fill2;
}
 
#streets [zoom > 14] {
  ::labels {
  text-name: [name];
  text-size: 14;
  text-face-name: @sans;
      //"Tahoma Small Cap Bold";
  text-placement: line;
  text-halo-fill: @streets_fill_light;
  text-halo-radius: 2px;
  text-fill: @streets_text_color;
  text-allow-overlap:false;
  text-min-padding: 10;
  text-transform: uppercase;
  text-character-spacing: 3;
    }
}

#layout {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}


#airport {
  line-width:1;
  line-color:#168;
}


#points {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}
