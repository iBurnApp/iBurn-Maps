//Color and Font Palette
@background: #E8E0D8;
  //#A7A1AF;
@plaza-color: #FFA851;
@sans_bold: "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans: "Tahoma Regular";
  //"Open Sans Semibold","DejaVu Sans Book","unifont Medium";
//@tahoma: "Tahoma Small Cap Bold";
@toilets: #168;
@streets_fill: #D9CCBE;
@streets_halo: #B2993D;
@streets_halo_text: #F2DBA0;
@streets_text_color: #3F3F3F;
  //yellow
  //#F2DBA0;
@fence: #AC1A20;

  
  //#FDFB37;

Map {
  background-color: @background;
}
 
#boundaries[Name="Fence"] { 
  line-width:1;
  line-color:@fence;
}

#plazas {
  line-color:#DF8337;
  line-width:2;
  polygon-opacity:1;
  polygon-fill:@plaza-color;
  
}

#streets {
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

#toilets [zoom > 13] {
  marker-file: url(maki/toilets-24.svg);
  marker-fill: @toilets;
  marker-transform:"scale(0.75)";
}

[zoom > 14]{
  marker-allow-overlap:true;
  marker-file:url(images/clear.png);
  #pois2 [Name = "First Aid (Main)"]{
      marker-fill: red;
	  marker-file: url(maki/hospital-24.svg);
  	  marker-transform:"scale(1.5)";
      [zoom >15] {
        point-transform:"scale(1.5)";
      }
  }
  #pois2 [Name = "First Aid (3:00)"]{
    [zoom > 17] {
      marker-file: url(maki/hospital-24.svg);
      marker-fill: red;
    }
  	  point-transform:"scale(1.5)"
  }
  #pois2 [Name = "First Aid (9:00)"]{
	[zoom > 17] {
      marker-file: url(maki/hospital-24.svg);
      marker-fill: red;
    }
  	  marker-transform:"scale(1.5)"
  }
}


#pois [zoom > 13]{
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  [Name = "The Man"]  {
    point-file: url(images/man.svg);
  	point-transform:"scale(.02)";
    [zoom > 15]{
      point-transform:"scale(.04)";
    }
  }
  [Name = "Ranger HQ"] {
    point-file: url(images/ranger.svg);
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
  [Name = "Ranger Outpost (Berlin)"] {
    point-file: url(images/ranger.svg);
    [zoom <= 17] {
      point-file: url(images/firstaid+ranger.svg);
    }
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
  [Name = "Ranger Outpost (Tokyo)"] {
    point-file: url(images/ranger.svg);
    [zoom <= 17] {
      point-file: url(images/firstaid+ranger.svg);
    }
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
  [Name = "Center Camp"] [zoom > 15] {
    marker-file: url(maki/cafe-24.svg);
    marker-transform:"scale(1.4)";
    marker-fill: #803C15;
    }
}


