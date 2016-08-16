#toilets {
  line-color: @toilets;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill: @toilets;
}


#toilets [zoom > 16] {
  	marker-file: url(maki/toilets-24.svg);
  	marker-fill: white;
  	//marker-transform:"scale(0.75), translate(-20, -20)";
  	//marker-ignore-placement:true;
  	marker-placement: interior;
  	marker-clip: false;
  	[zoom = 17] {
    	marker-transform:"scale(0.75)";
    }
} 

//RANGER outposts, there are three and the main one is larger
#pois [name = "Ranger Outpost (Berlin)"] {
  	[zoom = 15]{ 
      point-transform:"translate(-10, 2), scale(0.15)";
      point-allow-overlap:true;
      point-file: url(images/ranger.svg);
    }
    [zoom >= 16] {
      point-transform:"translate(15, -5), scale(0.2)";
      point-transform:"scale(0.20)";
      point-file: url(images/ranger.svg);
  }
}

#pois [name = "Ranger Outpost (Tokyo)"] {
	[zoom = 15]{
      point-transform:"translate(-10, 2), scale(0.15)";
      point-allow-overlap:true;
      point-file: url(images/ranger.svg);
    }
    [zoom >= 16] {
      point-transform:"translate(-15, 5), scale(0.20)";
      point-file: url(images/ranger.svg);
  }
}

#pois [zoom >12] [name = "Ranger HQ"] {
    point-allow-overlap:true;
    point-file: url(images/ranger.svg);
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
      point-file: url(images/ranger.svg);
    } 
  }

//First Aid Stations, there are three, the main one is larger   
#pois [name = "First Aid (Main)"] [zoom > 12] {
    [zoom = 14] {
      point-file: url(images/firstaid.svg);
      point-transform:"scale(.18)";
  	  point-allow-overlap:true;
  }
    [zoom = 15] {
      point-file: url(images/firstaid.svg);
      point-transform:"scale(0.2)";
  }
    [zoom >= 16] {
      point-file: url(images/firstaid.svg);
      point-transform:"scale(0.35)";
  }
}

#pois [name = "First Aid (9:00)"] {
    [zoom = 14] {
	  point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
      point-file: url(images/firstaid.svg);
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
      point-file: url(images/firstaid.svg);
      point-transform:"translate(5, -10), scale(0.20)";
  }
} 

#pois [name = "First Aid (3:00)"] {
    [zoom = 14] {
     point-file: url(images/firstaid.svg);
     point-transform:"scale(.09)";
     point-allow-overlap:true;
  }
    [zoom = 15] {
      point-file: url(images/firstaid.svg);
      point-transform:"scale(0.15)";
  }
    [zoom >= 16] {
      point-file: url(images/firstaid.svg);
      point-transform:"translate(-5, 10), scale(0.2)";
  }
}

#pois [name = "First Aid (4:30)"] {
    [zoom = 14] {
      point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
      point-transform:"scale(0.15)";
      point-file: url(images/firstaid.svg);
  }
    [zoom >= 16] {
      point-transform:"scale(0.20)";
      point-file: url(images/firstaid.svg);
  }
}
 
#pois [name = "First Aid (7:30)"] {
    [zoom = 14] {
      point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
      point-transform:"scale(0.15)";
      point-file: url(images/firstaid.svg);
  }
    [zoom >= 16] {
      point-transform:"scale(0.20)";
      point-file: url(images/firstaid.svg);
  }
}

#pois [name = "First Aid (Temple)"] {
    [zoom = 14] {
      point-file: url(images/firstaid.svg);
      point-allow-overlap:true;
      point-transform:"scale(0.09)";
  }
    [zoom = 15] {
      point-transform:"scale(0.15)";
      point-file: url(images/firstaid.svg);
  }
    [zoom >= 16] {
      point-transform:"scale(0.20)";
      point-file: url(images/firstaid.svg);
  }
}

//Other POIs like center camp POIs
#pois [zoom > 12] {
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  
  [name = "The Man"] {
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
   
  [name = "Center Camp"] [zoom > 14] {
    marker-file: url(maki/cafe-24.svg);
    marker-transform:"scale(1.1)";
    marker-fill: @cafe_brown;
    marker-allow-overlap: true;
    }
   
  [name = "Post Office"] [zoom > 14] {
    marker-file: url(maki/post-24.svg);
   	marker-transform:"scale(1.1)";
    marker-allow-overlap: true;
    }
  
  [ref = "bus"] [zoom > 14] {
    marker-file: url(maki/bus-18.svg);
    marker-transform:"scale(1.1)";
    marker-allow-overlap: true;
    [zoom > 15] {
      text-name: [name];
      text-size: 8;
      text-face-name: @sans;
      text-placement: point;
      text-dy: -13;
      text-halo-fill: @streets_fill_light;
      text-halo-radius: 2px;
      text-character-spacing: 2;
    }
  }
  
  [ref = "recycle"] [zoom > 14] {
    marker-file: url(images/recycle.svg);
    marker-transform:"scale(0.2)";
    marker-allow-overlap: true;
    marker-fill:@recycle;
    }
  
  [name = "Playa Info"] [zoom > 14] { 
    marker-transform:"scale(0.3)";
    marker-file: url(images/info2.svg);
    marker-allow-overlap: true;
   	}
  
  [name = "Playa Info"] [zoom >= 17] {
    marker-transform:"scale(0.5)";
    marker-file: url(images/info2.svg);
    marker-allow-overlap: true;
   	}  
  
  [ref = "ice"] [zoom > 14] {
    point-file: url(images/igloo3.svg);
    point-transform:"scale(.25)";
    [zoom >15]{
      point-transform:"scale(.35)";
    } 
  } 
 
} 

#pois [ref = "temple"] {
  [zoom < 15] [zoom > 12] {
    ::outline {
	marker-file:  url(images/templeoutline.svg);
    marker-fill: white;
    marker-allow-overlap:true;
    marker-transform:"scale(0.13)"; 
      }  
    ::fill {
    marker-file: url(images/temple2.svg); 
    marker-fill: @temple_color;
    marker-allow-overlap: true;
    marker-transform:"scale(0.11)"; 
    }
  }
  [zoom >= 15] {
    ::outline {
	marker-file:  url(images/templeoutline.svg);
    marker-fill: white;
    marker-allow-overlap:true;
    marker-transform:"scale(0.25)"; 
      }  
    ::fill {
    marker-file: url(images/temple2.svg); 
    marker-fill: @temple_color;
    marker-allow-overlap: true;
    marker-transform:"scale(0.22)"; 
    }
   }
 } 
