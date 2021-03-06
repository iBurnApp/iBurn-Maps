#toilets [zoom > 13] {
  	marker-file: url(maki/toilets-24.svg);
  	marker-fill: @toilets;
  	marker-transform:"scale(0.75)";
}
 
//First Aid Stations, there are three, the main one is larger   
#pois [Name = "First Aid (Main)"] [zoom > 12] {
    point-allow-overlap:true;
    point-file: url(images/firstaid.svg);
    point-transform:"scale(.18)";
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

#pois [Name = "First Aid (3:00)"] {
    [zoom = 14] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.20)";
  }
}

#pois [Name = "First Aid (9:00)"] {
    [zoom = 14] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.20)";
  }
}
 
//Ranger outposts, there are three and the main one is larger
#pois [Name = "Ranger Outpost (Berlin)"]
	  {
    [zoom = 14] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.20)";
  }
}

#pois [Name = "Ranger Outpost (Tokyo)"]
	  {
    [zoom = 14] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.20)";
  }
}

#pois [zoom >12] [Name = "Ranger Outpost (Tokyo)"] {
    [zoom = 14] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
	  point-file: url(images/ranger.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.20)";
  }
}

#pois [zoom >12] [Name = "Ranger HQ"] {
    point-allow-overlap:true;
    point-file: url(images/ranger.svg);
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    } 
  }

//Other POIs like center camp POIs
#pois [zoom > 12] {
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  
  [Name = "The Man"] {
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
  
  [Name = "Playa Info"] [zoom > 14] { 
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
  
  [Name = "Arctica Ice Sales"] [zoom > 14] {
    point-file: url(images/igloo3.svg);
    point-transform:"scale(.25)";
    [zoom >15]{
      point-transform:"scale(.35)";
    } 
  }
  
  [Name = "Arctica 3 Ice Cubed"] [zoom > 14] {
    point-file: url(images/igloo3.svg);
    point-transform:"scale(.20)";
    [zoom >15]{
      point-transform:"scale(.30)";
    } 
  }
  
  [Name = "Arctica9 Ice Sales"] [zoom > 14] {
    point-file: url(images/igloo3.svg);
    point-transform:"scale(.20)";
    [zoom >17]{
      point-transform:"scale(.30)";
    } 
  } 
 
} 

#pois [Name = "The Temple"] {
  [zoom < 15] [zoom > 12] {
    ::outline {
	marker-file:  url(images/templeoutline.svg);
    marker-fill: white;
    marker-allow-overlap:true;
    marker-transform:"scale(0.15)"; 
      }  
    ::fill {
    marker-file: url(images/temple2.svg); 
    marker-fill: @plaza_color;
    marker-allow-overlap: true;
    marker-transform:"scale(0.14)"; 
    }
  }
  [zoom >= 15] {
    ::outline {
	marker-file:  url(images/templeoutline.svg);
    marker-fill: white;
    marker-allow-overlap:true;
    marker-transform:"scale(0.28)"; 
      }  
    ::fill {
    marker-file: url(images/temple2.svg); 
    marker-fill: @plaza_color;
    marker-allow-overlap: true;
    marker-transform:"scale(0.25)"; 
    }
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
