//Color and Font Palette
@background: #E8E0D8;
@plaza_color: #FFA851;
@plaza_line: #DF8337;
@sans: "Tahoma Regular";
@toilets:#00AFD4;
@streets_fill: #D9CCBE;
@streets_halo: #B2993D;
@streets_halo_text: #F2DBA0; 
@streets_text_color: #3F3F3F;
@fence: #AC1A20;

Map {
  background-color: @background;
  buffer-size: 256;
}
 
#boundaries [Name="Fence"] { 
  line-width:1;
  line-color:@fence;
}

#plazas {
  line-color: @plaza_line;
  line-width:3;
  polygon-opacity:1;
  polygon-fill:@plaza_color;
  
}

#streets {
  [zoom < 13] {
    line-color:@streets_halo;
    line-width:0.5;
  } 
  [zoom < 14] {
    line-color:@streets_halo;
    line-width:1;
  } 
  [zoom >= 14] {
    ::outline {
      line-color:@streets_fill;
      line-width:3;
    }
    line-color:@streets_halo;
    line-width: 5;
  } 
  [zoom > 16] {
    ::outline {
      line-color:@streets_fill;
      line-width:5;
    }
    line-color:@streets_halo;
    line-width: 7;
  }
  [zoom > 18] {
    ::outline {
      line-color:@streets_fill;
      line-width:7;
    }
    line-color:@streets_halo;
    line-width: 9;
  }
  
}
 
#streetsLabel [zoom > 14] {
  ::labels {
  text-name: [Name];
  text-size: 9;
  text-face-name: @sans;
      //"Tahoma Small Cap Bold";
  text-placement: line;
  text-halo-fill: @streets_halo_text;
  text-halo-radius: 2px;
  text-fill: @streets_text_color;
  text-allow-overlap:false;
  text-min-padding: 10;
  text-transform: uppercase;
  text-character-spacing: 3;
    }
}

