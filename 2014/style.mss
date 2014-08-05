//Color and Font Palette
@background: #E8E0D8;
  //#A7A1AF;
@plaza_color: #FFA851;
@plaza_line: #DF8337;
@sans_bold: "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans: "Tahoma Regular";
  //"Open Sans Semibold","DejaVu Sans Book","unifont Medium";
//@tahoma: "Tahoma Small Cap Bold";
@toilets:#00AFD4;
  //#168;
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

#toilets [zoom > 13] {
  	marker-file: url(maki/toilets-24.svg);
  	marker-fill: @toilets;
  	marker-transform:"scale(0.75)";
}
 
  
#pois [Name = "First Aid (Main)"]{
    [zoom = 14] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.18)";
  }
    [zoom = 15] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.2)";
  }
    [zoom >= 16] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.35)";
  }
}
 


#pois [zoom > 12] {
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  [Name = "The Man"]{
   [zoom < 15]  {
    point-file: url(images/man.svg);
  	point-transform:"scale(.01)";}
   [zoom = 15]{
      point-transform:"scale(.02)";
      point-file: url(images/man.svg);
    }
   [zoom >= 16]{
      point-transform:"scale(.04)";
      point-file: url(images/man.svg);
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
    point-file: url(images/firstaid+ranger.svg);
    [zoom <= 17] {
      point-transform:"scale(.18)"; 
    }
    [zoom > 17]{ 
      point-transform:"scale(.3)";
    }
  }
  
  [Name = "Ranger Outpost (Tokyo)"] {
    point-file: url(images/firstaid+ranger.svg);
    [zoom <= 17] {
    point-transform:"scale(.18)";
      }
    [zoom > 15]{
    point-transform:"scale(.3)";
      }
  }
   
  [Name = "Center Camp"] [zoom > 14] {
    marker-file: url(maki/cafe-24.svg);
    marker-transform:"scale(1.1)";
    marker-fill: #803C15;
    marker-allow-overlap: true;
    }
   
  [Name = "Post Office"] [zoom > 14] {
    marker-file: url(maki/post-24.svg);
    marker-transform:"scale(1.1)";
    marker-allow-overlap: true;
    }
  
  [Name = "The Temple"] [zoom > 12] {
    marker-file: url(images/temple2.svg); 
    marker-fill: @plaza_color;
    marker-allow-overlap: true;
    marker-transform:"scale(0.3)";
    }
  
  [Name = "Playa Info"] [zoom = 16] { 
    marker-transform:"scale(0.3)";
    marker-file: url(images/info2.svg);
    marker-allow-overlap: true;
   	}
  
  [Name = "Playa Info"] [zoom >= 17] {
    marker-transform:"scale(0.5)";
    marker-file: url(images/info2.svg);
    marker-allow-overlap: true;
   	} 
  
  [Name = "Port of Entry"] {
    marker-file: url(maki/airport-24.svg);
    marker-allow-overlap: true;
   	} 
 
}

#pois [zoom < 13] {
   [Name = "Black Rock City"] {
    //marker-width:3;
    //marker-fill:black;
    text-dx:30px;
    text-dy:-10px;
   	text-name:"[Name]";
    text-face-name: @sans;
    text-character-spacing:2;
    text-transform: uppercase;
    text-size:15;
    text-halo-fill: @streets_halo_text;
  	text-halo-radius: 3px;
  	text-fill: @streets_text_color;
   	} 
}
 


